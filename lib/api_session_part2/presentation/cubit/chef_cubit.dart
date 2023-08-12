import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/api_session_part2/data/end_points.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'chef_state.dart';

class ChefCubit extends Cubit<ChefState> {
  ChefCubit() : super(ChefInitial());
  //signIn => Post
  void signIn() async {
    await Dio()
        .post(
          EndPoints.baseUrl + EndPoints.chefSignIn,
          data: {
            "email": "ammarfathy516@gmail.com",
            "password": "anas123",
          },
        )
        .then((value) => print(value.data))
        .catchError((e) {
          print(e.toString());
        });
  }

// chefChangePassword => Patch
  void chefChangePassword() async {
    await Dio(
      BaseOptions(
        headers: {
          'token':
              'FOODAPI eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0ZDc0MGVmNjBkMzJhODk3YzZkZmJkZiIsImVtYWlsIjoiYW1tYXJmYXRoeTUxNkBnbWFpbC5jb20iLCJuYW1lIjoiQW5hcyIsImlhdCI6MTY5MTgzNDMxMH0.wgSUP7ph_3Pjv145OQ2Z1gttRMI2eWUReJmHK_v8NQo',
        },
      ),
    )
        .patch(
          EndPoints.baseUrl + EndPoints.chefChangePassword,
          data: {
            "oldPass": "anas123",
            "newPass": "anas1234",
            "confirmPassword": "anas1234"
          },
        )
        .then((value) => print(value.data))
        .catchError((e) {
          print(e.toString());
        });
  }

// chefDelete => Delete
  void chefDelte() async {
    String token =
        'FOODAPI eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0ZDc0MGVmNjBkMzJhODk3YzZkZmJkZiIsImVtYWlsIjoiYW1tYXJmYXRoeTUxNkBnbWFpbC5jb20iLCJuYW1lIjoiQW5hcyIsImlhdCI6MTY5MTgzNDMxMH0.wgSUP7ph_3Pjv145OQ2Z1gttRMI2eWUReJmHK_v8NQo';
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    print(decodedToken);
    var id = decodedToken['id'];
    await Dio(
      BaseOptions(headers: {'token':token})
    )
        .delete(EndPoints.baseUrl + EndPoints.chefDelete,
            queryParameters: {'id': id})
        .then((value) => print(value))
        .catchError((e) {
          print(e.toString());
        });
  }

// chefGet => Get
  void getChefData() async {
    String token =
        'FOODAPI eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0ZDc0MGVmNjBkMzJhODk3YzZkZmJkZiIsImVtYWlsIjoiYW1tYXJmYXRoeTUxNkBnbWFpbC5jb20iLCJuYW1lIjoiQW5hcyIsImlhdCI6MTY5MTgzNDMxMH0.wgSUP7ph_3Pjv145OQ2Z1gttRMI2eWUReJmHK_v8NQo';
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    print(decodedToken);
    var id = decodedToken['id'];
    await Dio(
      BaseOptions(
        headers: {
          'token': token,
        },
      ),
    )
        .get(
          EndPoints.baseUrl + EndPoints.getChefDataEndPoint(id),
        )
        .then((value) => print(value))
        .catchError((e) {
      print(e.toString());
    });
  }
}
