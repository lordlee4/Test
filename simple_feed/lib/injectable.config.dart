// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'bloc/bloc/auth_bloc.dart';
import 'bloc/core/core_bloc.dart';
import 'models/firebase_Injectable_Module.dart';
import 'repository_core/remote_api.dart';
import 'repository_core/user_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<Dio>(() => firebaseInjectableModule.dio);
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<RemoteApi>(() => RemoteApi(get<Dio>(), get<FirebaseAuth>()));
  gh.lazySingleton<UserRepository>(() => UserRepository(get<FirebaseAuth>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<UserRepository>(), get<RemoteApi>()));
  gh.factory<CoreBloc>(() => CoreBloc(get<RemoteApi>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
