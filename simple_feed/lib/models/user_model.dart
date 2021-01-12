import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserEntity extends Equatable {
  final String userId;
  final String userName;
  final String phoneNum;

  UserEntity(this.userId, this.phoneNum, this.userName);

  factory UserEntity.fromFirebaseUser(User firebaseUser) {
    return UserEntity(
      firebaseUser.uid,
      firebaseUser.displayName,
      firebaseUser.phoneNumber,
    );
  }

  @override
  // instead of doing super for equatable, we are doing this.
  List<Object> get props => [this.userId, this.userName, this.phoneNum];
}
