import 'package:dartz/dartz.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/api_consumer.dart';
import 'package:flutter_ui/api_session_part3/core/error/exceptions.dart';
import 'package:flutter_ui/api_session_part3/core/services/service_locator.dart';

import '../../../../core/database/remote/end_points.dart';

class SendCodeRepo {
  Future<Either<String, String>> sendCode(String email) async {
    try {
      var res = await sl<ApiConsumer>().post(EndPoint.sendCode, data: {
        "email": email,
      });
      return Right(res['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel.errorMessage);
    }catch (e) {
      return Left(e.toString());
    } 
  }
}
