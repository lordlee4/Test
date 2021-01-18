import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_feed/bloc/bloc/auth_bloc.dart';
import 'package:simple_feed/bloc/core/core_bloc.dart';
import 'package:simple_feed/repository_core/remote_api.dart';
import 'package:simple_feed/repository_core/user_repository.dart';
import 'package:simple_feed/screens/feedScreen.dart';
import 'package:simple_feed/screens/postScreen.dart';
import 'package:simple_feed/screens/welcome.dart';
import 'package:simple_feed/utils/theme.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_feed/injectable.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:firebase_core/firebase_core.dart';
import 'package:dio/dio.dart';
import 'package:simple_feed/models/response_models.dart';

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => getIt<AuthBloc>()),
        BlocProvider(create: (BuildContext context) => getIt<CoreBloc>()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: basicTheme(),
        home: LoginPage(),
      ),
    );
  }
}
