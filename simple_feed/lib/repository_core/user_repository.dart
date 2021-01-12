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

  Future<void> verifyPhoneNumber(String phoneNumber) async {
    try {
      await _firebaseAuth.verifyPhoneNumber(
          phoneNumber: "+251" + phoneNumber,
          verificationCompleted: (authCredential) =>
              _verificationCompleted(authCredential),
          verificationFailed: (authException) =>
              _verificationFailed(authException),
          codeSent: (verificationCode, [code]) =>
              _smsCodeSent(verificationCode, [code]),
          codeAutoRetrievalTimeout: (verificationCode) =>
              _codeAutoRetrievalTimeout(verificationCode));
    } on FirebaseAuthException catch (e) {
      return e.message;
    } catch (e) {
      rethrow;
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
  }

  String _verificationFailed(FirebaseAuthException authException) {
    return authException.message;
  }

  void _codeAutoRetrievalTimeout(String verificationCode) {
    _verificationCode = verificationCode;
  }

  // ignore: missing_return
  Future<UserEntity> signInWithSmsCode(String smsCode) async {
    debugPrint('verify in sign in' + _verificationCode);
    debugPrint("Sms Code" + smsCode.toString());

    UserEntity _user;
    AuthCredential authCredential = PhoneAuthProvider.credential(
        verificationId: _verificationCode, smsCode: smsCode);
    _firebaseAuth.signInWithCredential(authCredential).then((authResult) {
      _user = UserEntity.fromFirebaseUser(authResult.user);
    });
  }
}
