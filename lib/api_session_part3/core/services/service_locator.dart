import 'package:dio/dio.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/api_consumer.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/dio_consumer.dart';
import 'package:flutter_ui/api_session_part3/features/test/data/repository/test_repository.dart';
import 'package:flutter_ui/api_session_part3/features/test/presentation/cubit/test_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/send_code_forgotten_password/data/repository/send_code_repo.dart';
import '../../features/send_code_forgotten_password/presentation/cubit/send_code_cubit.dart';
import '../database/local/cache/cache_helper.dart';

final sl = GetIt.instance;
void setup() {
  //dio
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => CacheHelper());
  sl.registerLazySingleton(() => TestRepository());
  sl.registerLazySingleton(() => SendCodeRepo());
  sl.registerLazySingleton(() => TestCubit(sl()));
  sl.registerLazySingleton(() => SendCodeCubit(sl()));
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(sl()));
}
class A{}
class B extends A{}
