import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repository/send_code_repo.dart';
import 'send_code_state.dart';

class SendCodeCubit extends Cubit<SendCodeState> {
  SendCodeCubit(this.repo) : super(SendCodeInitial());
  TextEditingController controller = TextEditingController();
  final SendCodeRepo repo;
  void sendCode() async {
    emit(SendCodeLoading());
    var result = await repo.sendCode(controller.text);
    result.fold(
      (l) {
        // print(l);
        emit(SendCodeError(l));
      },
      (r) {
        // print(r);
        emit(SendCodeSucess(r));
      },
    );
  }
}
