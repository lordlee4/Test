// // GENERATED CODE - DO NOT MODIFY BY HAND

// // **************************************************************************
// // InjectableConfigGenerator
// // **************************************************************************

// import 'package:dio/dio.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get_it/get_it.dart';
// import 'package:injectable/injectable.dart';

// import 'bloc/core/core_bloc.dart';
// import 'injection/injectable_module.dart';
// import 'repository_core/remote_api.dart';

// /// adds generated dependencies
// /// to the provided [GetIt] instance

// GetIt $initGetIt(
//   GetIt get, {
//   String environment,
//   EnvironmentFilter environmentFilter,
// }) {
//   final gh = GetItHelper(get, environment, environmentFilter);
//   final firebaseInjectableModule = _$FirebaseInjectableModule();
//   gh.factory<Dio>(() => firebaseInjectableModule.dio);
//   gh.factory<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
//   gh.lazySingleton<RemoteApi>(() => RemoteApi(get<Dio>(), get<FirebaseAuth>()));
//   gh.factory<CoreBloc>(() => CoreBloc(get<RemoteApi>()));
//   gh.factory<AuthBloc>(() => AuthBloc(get<UserRepository>()));
//   return get;
// }

// class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
