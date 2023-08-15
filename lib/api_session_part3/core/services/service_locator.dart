import 'package:dio/dio.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/api_consumer.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/dio_consumer.dart';
import 'package:get_it/get_it.dart';

import '../database/local/cache/cache_helper.dart';

final sl = GetIt.instance;
void setup() {
  //dio
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => CacheHelper());
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(sl()));
}
class A{}
class B extends A{}
