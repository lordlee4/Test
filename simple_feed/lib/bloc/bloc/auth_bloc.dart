import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:simple_feed/bloc/core/core_bloc.dart';
import 'package:simple_feed/models/response_models.dart';
import 'package:simple_feed/models/user_model.dart';
import 'package:simple_feed/repository_core/failures/remote_api_failures.dart';
import 'package:simple_feed/repository_core/remote_api.dart';
import 'package:simple_feed/repository_core/user_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final RemoteApi _remoteApi;
  final UserRepository _userRepository;
  String _phoneNumber = "+251924334356";

  AuthBloc(this._userRepository, this._remoteApi)
      : super(UninitializedState()) {
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
    } else if (event is LoggedOutEvent) {
      yield* mapLoggedOutState();
    }
  }

  Stream<AuthState> mapLoggedOutState() async* {
    if (await _userRepository.signOut()) {
      yield UnAuthenticatedState();
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
    _phoneNumber = (event as SendCode).phoneNumber;
    yield sentVerificationCodeFailureOrSuccess.fold(
        (l) => FailedToSendCodeState(message: "Cannot Send Code"),
        (r) => CodeSentState());
  }

  Stream<AuthState> mapVerifyPhoneNumberState(AuthEvent event) async* {
    Either<Unit, Unit> smsCodeVerificationFailureOrSuccess =
        await _userRepository
            .signInWithSmsCode((event as VerifyPhoneNumber).smsCode);

    yield await smsCodeVerificationFailureOrSuccess
        .fold((l) => OtpExceptionState(message: "Invalid Otp"), (r) async {
      Either<RemoteApiFailures, UserModel> verifyFailureOrSuccess =
          await _remoteApi.verify(phonenumber: _phoneNumber);
      return verifyFailureOrSuccess.fold((l) {
        add(LoggedOutEvent());
        return OtpExceptionState(message: "Invalid Otp");
      }, (r) => AuthenticatedState());
    });
  }
}
