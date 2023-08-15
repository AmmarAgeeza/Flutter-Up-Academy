import 'package:dio/dio.dart';

import '../../services/service_locator.dart';
import '../local/cache/cache_helper.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['token'] = sl<CacheHelper>().getData(key: 'token') != null
        ? 'FOODAPI ${sl<CacheHelper>().getData(key: 'token')}'
        : null;
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
    super.onError(err, handler);
  }
}
