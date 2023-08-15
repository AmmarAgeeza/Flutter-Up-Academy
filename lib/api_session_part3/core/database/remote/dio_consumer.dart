import 'package:dio/dio.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/api_consumer.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/api_interceptors.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/end_points.dart';
import 'package:flutter_ui/async_programming_session/exeptions.dart';

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
      final res = dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return res;
    } on DioException catch (error) {
      handelError(error);
    }}
  @override
  Future get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final res = dio.get(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return res;
    } on DioException catch (error) {
      handelError(error);
    }
  }
  @override
  Future patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  })  async {
    try {
      final res = dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return res;
    } on DioException catch (error) {
      handelError(error);
    }
  }

  @override
  Future post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final res = dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return res;
    } on DioException catch (error) {
      handelError(error);
      }
       catch (error) {print(error.toString());}
    }
  }
  handelError(
    error
  ){
    switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.connectionError:
          throw ServerException('Time is over');
        case DioExceptionType.badResponse:
          switch (error.response?.statusCode) {
            case StatusCode.notFound:
            throw ServerException('notFound');
            case StatusCode.unauthorized:
            throw ServerException('unauthorized');
            case StatusCode.forbidden:
            throw ServerException('forbidden');
            case StatusCode.badRequest:
            throw ServerException('badRequest');
            case StatusCode.conflict:
            throw ServerException('conflict');
            case StatusCode.internalServerError:
            throw ServerException('internalServerError');
          }
          break;
        case DioExceptionType.cancel:
          break;
        case DioExceptionType.unknown:
      }
  }


class StatusCode {
  static const int ok = 200;
  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int notFound = 404;
  static const int conflict = 409;
  static const int internalServerError = 500;
}
