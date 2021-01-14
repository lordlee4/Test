import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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

  AuthBloc(this._userRepository) : super(UninitializedState()) {
    add(AppStart());
  }

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
        yield AuthenticatedState();
      } else {
        yield UnAuthenticatedState();
      }
    } catch (_) {
      yield UnAuthenticatedState();
    }
  }

  Stream<AuthState> mapSendCodeState(AuthEvent event) async* {
    Either<Unit, Unit> sentVerificationCodeFailureOrSuccess =
        await _userRepository
            .verifyPhoneNumber((event as SendCode).phoneNumber);
    yield sentVerificationCodeFailureOrSuccess.fold(
        (l) => FailedToSendCodeState(message: "Cannot Send Code"),
        (r) => CodeSentState());
  }

  Stream<AuthState> mapVerifyPhoneNumberState(AuthEvent event) async* {
    Either<Unit, Unit> smsCodeVerificationFailureOrSuccess =
        await _userRepository
            .signInWithSmsCode((event as VerifyPhoneNumber).smsCode);
    yield smsCodeVerificationFailureOrSuccess.fold(
        (l) => OtpExceptionState(message: "Invalid Otp"),
        (r) => AuthenticatedState());
  }
}
