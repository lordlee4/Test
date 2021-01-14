import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'dart:io';

import 'package:simple_feed/models/user_model.dart';

@lazySingleton
class UserRepository {
  final FirebaseAuth _firebaseAuth;
  String _verificationCode = '';

  UserRepository(this._firebaseAuth);

  Future<Either<Unit, Unit>> verifyPhoneNumber(String phoneNumber) async {
    try {
      _firebaseAuth
          .verifyPhoneNumber(
              phoneNumber: "+251" + phoneNumber,
              verificationCompleted: (authCredential) => {},
              verificationFailed: (authException) =>
                  {print("DASFDSAFDSAFADSF"), throw ('hey')},
              codeSent: (verificationCode, [code]) => {
                    _smsCodeSent(verificationCode, [code]),
                  },
              codeAutoRetrievalTimeout: (verificationCode) => NullThrownError())
          .then((value) => {});

      return right(unit);
    } catch (e) {
      print("heys" + e.toString());
      return left(unit);
    }
  }

  Future<UserEntity> getUser() async {
    User user = await _firebaseAuth.currentUser;
    return UserEntity.fromFirebaseUser(user);
  }

  Future<bool> isAuthenticated() async {
    final currentUser = await _firebaseAuth.currentUser;
    return currentUser != null;
  }

  void _verificationCompleted(AuthCredential authCredential) {}

  void _smsCodeSent(String verificationCode, List<int> code) {
    _verificationCode = verificationCode;
    print(code);
  }

  String _verificationFailed(FirebaseAuthException authException) {
    return authException.message;
  }

  void _codeAutoRetrievalTimeout(String verificationCode) {
    _verificationCode = verificationCode;
  }

  Future<Either<Unit, Unit>> signInWithSmsCode(String smsCode) async {
    print('verify in sign in' + _verificationCode);
    print("Sms Code" + smsCode.toString());
    try {
      AuthCredential authCredential = PhoneAuthProvider.credential(
          verificationId: _verificationCode, smsCode: smsCode);
      print(authCredential);

      if (authCredential.token == null) {
        return left(unit);
      } else {
        UserCredential userCredential =
            await _firebaseAuth.signInWithCredential(authCredential);
        return userCredential == null ? left(unit) : right(unit);
      }
    } catch (e) {
      print("hey" + e.toString());
      return left(unit);
    }
  }
}
