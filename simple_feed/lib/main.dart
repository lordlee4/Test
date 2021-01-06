import 'package:flutter/material.dart';
import 'package:simple_feed/screens/postScreen.dart';
import 'package:simple_feed/screens/welcome.dart';
import 'package:simple_feed/utils/theme.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_feed/injections.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: basicTheme(),
      home: Post(),
    );
  }
}
