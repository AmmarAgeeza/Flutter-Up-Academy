import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../cubit/send_code_cubit.dart';
import '../cubit/send_code_state.dart';

class SendCodeForgetPassword extends StatelessWidget {
  const SendCodeForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SendCodeCubit, SendCodeState>(
      listener:(context, state) {
        if (state is SendCodeSucess){
Fluttertoast.showToast(
        msg: state.message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );
        }
       
        if (state is SendCodeError){
Fluttertoast.showToast(
        msg: state.message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
        }

      } ,
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller:
                      BlocProvider.of<SendCodeCubit>(context).controller,
                ),
                state is SendCodeLoading
                    ? const CircularProgressIndicator()
                    : MaterialButton(
                        child: const Text('send code'),
                        onPressed: () {
                          BlocProvider.of<SendCodeCubit>(context).sendCode();
                        },
                      )
              ],
            ),
          ),
        );
      },
    );
  }
}
