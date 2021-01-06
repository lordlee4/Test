import 'package:flutter/material.dart';

ThemeData basicTheme() {
  TextTheme _basicTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1.copyWith(
          fontSize: 24.0,
          color: Color(0xFF0E0E0E), //verify number  cod grey
          fontWeight: FontWeight.bold),
      headline2: base.headline2.copyWith(
        fontSize: 18.0,
        color: Color(0xFF9B9B9B), //have sent a lightgrey
      ),
      button: base.button.copyWith(
        fontSize: 16.0,
        color: Color(0xFFE9446A), //button  amaranth red
      ),
      headline4: base.headline4.copyWith(
        fontSize: 18.0,
        color: Color(0xFF0E0E0E),
        fontWeight: FontWeight.bold,
      ),
      caption: base.caption.copyWith(
        fontSize: 16.0,
        color: Color(0xFF9B9B9B),
      ),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _basicTheme(base.textTheme),
    primaryColor: Color(0xFFE9446A),
  );
}

//Theme(data:Theme.of(context).textTheme.headline4.copyWith(color: Colors.yellow), child:)
//
