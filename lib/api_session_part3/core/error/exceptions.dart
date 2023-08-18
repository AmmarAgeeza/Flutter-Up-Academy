import 'package:flutter_ui/api_session_part3/core/error/error_model.dart';

class  ServerException implements Exception{
  final ErrorModel errorModel;

  ServerException(this.errorModel);
}
class BadCertificateException extends ServerException{
  BadCertificateException(super.errorModel);
}
class BadResposneException extends ServerException{
  BadResposneException(super.errorModel);
}