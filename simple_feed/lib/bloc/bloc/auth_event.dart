part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent extends Equatable {
  AuthEvent([List props = const []]);
}

class AppStart extends AuthEvent {
  @override
  String toString() => 'AppStarted';

  @override
  List<Object> get props => [];
}

class SendCode extends AuthEvent {
  final String phoneNumber;
  SendCode({@required this.phoneNumber});

  @override
  List<Object> get props => [phoneNumber];
}

class VerifyPhoneNumber extends AuthEvent {
  final String smsCode;

  VerifyPhoneNumber({@required this.smsCode});

  @override
  List<Object> get props => [smsCode];
}

class LoginExceptionEvent extends AuthEvent {
  String message;

  LoginExceptionEvent(this.message);
  @override
  List<Object> get props => [message];
}
