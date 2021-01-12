import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:simple_feed/models/user_model.dart';
import 'package:simple_feed/repository_core/user_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserRepository _userRepository;

  AuthBloc(this._userRepository) : super(UninitializedState());

  @factoryMethod
  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is AppStart) {
      yield* mapAppStartToState();
    } else if (event is SendCode) {
      yield* mapSendCodeState(event);
    } else if (event is VerifyPhoneNumber) {
      yield* mapVerifyPhoneNumberState(event);
    }
  }

  Stream<AuthState> mapAppStartToState() async* {
    try {
      final isAuthenticated = await _userRepository.isAuthenticated();
      if (isAuthenticated) {
        yield AuthenticatedState(user: await _userRepository.getUser());
      } else {
        yield UnAuthenticatedState();
      }
    } catch (_) {
      yield UnAuthenticatedState();
    }
  }

  Stream<AuthState> mapSendCodeState(AuthEvent event) async* {
    await _userRepository.verifyPhoneNumber((event as SendCode).phoneNumber);
    yield CodeSentState();
  }

  Stream<AuthState> mapVerifyPhoneNumberState(AuthEvent event) async* {
    UserEntity _user = await _userRepository
        .signInWithSmsCode((event as VerifyPhoneNumber).smsCode);
    yield AuthenticatedState(user: _user);
  }
}
