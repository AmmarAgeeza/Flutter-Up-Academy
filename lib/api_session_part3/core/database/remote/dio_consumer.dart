import 'package:dio/dio.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/api_consumer.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/api_interceptors.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/end_points.dart';
import 'package:flutter_ui/api_session_part3/core/error/error_model.dart';
import 'package:flutter_ui/api_session_part3/core/error/exceptions.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer(this.dio) {
    dio.options.baseUrl = EndPoint.baseUrl;
    dio.interceptors.add(ApiInterceptors());
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));
  }
  @override
  Future delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var res = await dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return res.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  })async {
    try {
      var res = await dio.get(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return res.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var res = await dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return res.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var res = await dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return res.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }
  handleDioException(e){
    switch (e.type) {
        case DioExceptionType.badCertificate:
        throw BadCertificateException(ErrorModel.fromJson(e.response!.data));
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.connectionError:
        case DioExceptionType.sendTimeout:
          // throw ServerException('connection Error');
          throw ServerException(ErrorModel.fromJson(e.response!.data));

        case DioExceptionType.badResponse:
          switch (e.response?.statusCode) {
            case 400: //bad request

            case 401: //unauthorized
            case 403: //forbidden
            case 404: //notFound
            case 409: //conflict
              throw BadResposneException(ErrorModel.fromJson(e.response!.data));

            // print(e.response);
          }
        case DioExceptionType.cancel:
        case DioExceptionType.unknown:
          throw ServerException(ErrorModel.fromJson(e.response!.data));

        // throw ServerException('badResponse');
      }
  }
}
