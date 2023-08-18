import 'package:dartz/dartz.dart';
import 'package:flutter_ui/api_session_part2/data/model/login_model.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/api_consumer.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/end_points.dart';
import 'package:flutter_ui/api_session_part3/core/error/exceptions.dart';

import '../../../../core/services/service_locator.dart';

class TestRepository {
  Future<Either<String, LoginModel>> signIn() async {
    try {
      final res = await sl<ApiConsumer>().post(
        EndPoint.chefSignIn,
        data: {
          "email": "ammarfathy516@gmail.com",
          "password": "ammar12",
        },
      );
      //sucess

      return Right(LoginModel.fromJson(res));
    } on ServerException catch (e) {
      //error
      // print(e.errorModel.errorMessage);
      return left(e.errorModel.errorMessage);
    }
  }
}
