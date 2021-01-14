import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
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
    bool hasConnection = await DataConnectionChecker().hasConnection;

    try {
      if (hasConnection == true) {
        _verificationCode = '';
        await _firebaseAuth.verifyPhoneNumber(
            phoneNumber: "+251" + phoneNumber,
            verificationCompleted: (authCredential) =>
                _verificationCompleted(authCredential),
            verificationFailed: (authException) =>
                _verificationFailed(authException),
            codeSent: (verificationCode, code) =>
                _smsCodeSent(verificationCode, code),
            codeAutoRetrievalTimeout: (verificationCode) =>
                _codeAutoRetrievalTimeout(verificationCode));
        return right(unit);
      } else {
        return left(unit);
      }
    } catch (e) {
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

  void _smsCodeSent(String verificationCode, int code) {
    _verificationCode = verificationCode;
  }

  String _verificationFailed(FirebaseAuthException authException) {
    return authException.message;
  }

  void _codeAutoRetrievalTimeout(String verificationCode) {
    _verificationCode = verificationCode;
  }

  Future<bool> signOut() async {
    try {
      Future.wait([_firebaseAuth.signOut()]);
      return true;
    } on FirebaseAuthException catch (e) {
      return false;
    } catch (e) {
      rethrow;
    }
  }

  Future<Either<Unit, Unit>> signInWithSmsCode(String smsCode) async {
    print('verify in sign in' + _verificationCode);
    print("Sms Code" + smsCode.toString());
    try {
      AuthCredential authCredential = PhoneAuthProvider.credential(
          verificationId: _verificationCode, smsCode: smsCode);

      if (authCredential == null) {
        return left(unit);
      } else {
        UserCredential userCredential =
            await _firebaseAuth.signInWithCredential(authCredential);
        return userCredential == null ? left(unit) : right(unit);
      }
    } catch (e) {
      return left(unit);
    }
  }
}
