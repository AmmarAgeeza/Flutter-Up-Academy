import 'package:dio/dio.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/api_consumer.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/dio_consumer.dart';
import 'package:get_it/get_it.dart';

import '../../features/test/data/repositories/test_repository.dart';
import '../../features/test/presentation/cubit/test_cubit.dart';
import '../database/local/cache/cache_helper.dart';

final sl = GetIt.instance;
void setup() {
  //dio
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => CacheHelper());
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(sl()));
  sl.registerLazySingleton<TestRepositoryTwo>(() => TestRepositoryTwo());
  sl.registerLazySingleton<TestCubit>(() => TestCubit(sl()));
}
class A{}
class B extends A{}
