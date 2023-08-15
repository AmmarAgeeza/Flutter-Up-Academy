import 'package:dio/dio.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/api_consumer.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/end_points.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer(this.dio) {
    dio.options.baseUrl = EndPoint.baseURlFake;
  }
  @override
  Future delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    await dio.delete(
      path,
      data: data,
      queryParameters: queryParameters,
    );
  }

  @override
  Future get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    await dio.get(
      path,
      data: data,
      queryParameters: queryParameters,
    );
  }

  @override
  Future patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    await dio.patch(
      path,
      data: data,
      queryParameters: queryParameters,
    );
  }

  @override
  Future post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    await dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
    );
  }
}
