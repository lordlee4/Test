part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class UninitializedState extends AuthState {}

class AuthenticatedState extends AuthState {}

class UnAuthenticatedState extends AuthState {}

class CodeSentState extends AuthState {}

class FailedToSendCodeState extends AuthState {
  String message;

  FailedToSendCodeState({this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}

class OtpExceptionState extends AuthState {
  String message;

  OtpExceptionState({this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}
