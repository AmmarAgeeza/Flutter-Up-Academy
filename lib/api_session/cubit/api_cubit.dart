import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/api_session/model/album_model.dart';

import 'api_state.dart';

class ApiCubit extends Cubit<ApiState> {
  ApiCubit() : super(ApiInitial());
  List<AlbumModel> albums = [];
  void getAlbumsData() async {
    emit(GetAlbumLoadingState());
    
    var data = [];
    // final response =
    await Dio()
        .get('https://jsonplaceholder.typicode.com/albums')
        .then((value) {
      print(value.statusCode);
      data = value.data;
      albums = data.map((e) => AlbumModel.fromJson(e)).toList();
      print(albums[0].title);
      emit(GetAlbumSucessState());
    }).catchError((e) {
      print(e.toString());
      emit(GetAlbumErrorState());
    });
    // print(response.data);

    // var data = response.data;
    // var statusCode = response.statusCode;
    // print(statusCode);
    // print(data[2]['id']);
  }
}

class APIResponse {
  void getRes() {}
}
