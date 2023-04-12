
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rz_test/data/datasources/unknown/unknown_remote_data_source.dart';
import 'package:rz_test/data/datasources/unknown/user_remote_data_source.dart';
import 'package:rz_test/data/repository/unknown_repository.dart';
import 'package:rz_test/data/repository/user_repository.dart';
import 'package:rz_test/data/services/api_interceptors.dart';
import 'package:rz_test/data/services/api_services.dart';
import 'package:rz_test/domain/repository/unknown_repository.dart';
import 'package:rz_test/domain/repository/user_repository.dart';
import 'package:rz_test/domain/usecase/do_registration.dart';
import 'package:rz_test/domain/usecase/get_list_unknown.dart';
import 'package:rz_test/domain/usecase/get_user.dart';
import 'package:rz_test/presenter/bloc/unknown/unknown_cubit.dart';
import 'package:rz_test/presenter/bloc/user/user_cubit.dart';

import 'domain/usecase/do_login.dart';

final locator = GetIt.instance;

Future<void> init() async {

  locator.registerLazySingleton(() => UserCubit(locator(), locator(), locator()));
  locator.registerLazySingleton(() =>
      UnknownCubit(locator())
  );

  locator.registerLazySingleton(() => GetListUnknown(locator()));
  locator.registerLazySingleton(() => DoRegistration(locator()));
  locator.registerLazySingleton(() => DoLogin(locator()));
  locator.registerLazySingleton(() => IsLoggedIn(locator()));

  locator.registerLazySingleton<UnknownRepository>(() => UnknownRepositoryImpl(locator()));
  locator.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(locator()));

  locator.registerLazySingleton<UnknownRemoteDataSource>(() => UnknownRemoteDataSourceImpl(locator()));
  locator.registerLazySingleton<UserRemoteDataSource>(() => UserRemoteDataSourceImpl(locator()));

  locator.registerLazySingleton(() {
    final dio = Dio(
        BaseOptions(
          baseUrl: 'https://reqres.in/api',
          connectTimeout: const Duration(milliseconds: 5000),
          receiveTimeout: const Duration(milliseconds: 3000),
        )
    );

    dio.interceptors.add(AppInterceptors(dio));

    return ApiServices(dio);
  });

}