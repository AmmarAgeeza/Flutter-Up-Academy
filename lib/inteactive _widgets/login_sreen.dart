import 'package:flutter/material.dart';

import 'interactive_widgtes.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
TextEditingController emailController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          //! Textfield
          TextField(
            controller:emailController ,
            keyboardType: TextInputType.phone,
            // onChanged: (value){
            //   print(value);
            // },
            onSubmitted: (value){
              print(value);
            },
          ),
          cutomButton(() =>print(emailController.text) , 'printdata in controller')
        ],
      ),
    );
  }
}