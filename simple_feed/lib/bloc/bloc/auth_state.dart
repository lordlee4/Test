part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class UninitializedState extends AuthState {}

class AuthenticatedState extends AuthState {
  final UserEntity user;

  AuthenticatedState({@required this.user});
  @override
  List<Object> get props => [user];
}

class UnAuthenticatedState extends AuthState {}

class CodeSentState extends AuthState {}
