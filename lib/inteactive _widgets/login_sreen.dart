import 'package:flutter/material.dart';
import 'package:flutter_ui/inteactive%20_widgets/test.dart';

import 'interactive_widgtes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String data = 'Data';
  bool isVis = true;
  @override
  void initState() {
    super.initState();
    print('Initial');
  }

  @override
  void dispose() {
    print('last');

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              //! Textfield
              // TextField(
              //   controller: emailController,
              //   keyboardType: TextInputType.phone,
              //   // onChanged: (value){
              //   //   print(value);
              //   // },
              //   onSubmitted: (value) {
              //     print(value);
              //   },
              //   decoration: InputDecoration(
              //     // prefix: const Icon(Icons.mail),
              //     prefixIcon: const Icon(Icons.mail),
              //     suffix: const Icon(Icons.person),
              //     hintText: 'Enter Your Name',
              //     labelText: 'Email',
              //     // enabled: false,
              //     //border
              //     // border: OutlineInputBorder(
              //     //   borderRadius: BorderRadius.circular(30),
              //     //   borderSide: const BorderSide(
              //     //     color: Colors.deepOrange,
              //     //   ),
              //     // ),
              //     //enabled Border
              //     enabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(30),
              //       borderSide: const BorderSide(
              //           color: Colors.black, strokeAlign: 5, width: 5),
              //     ),
              //     //Foucesd boeder
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(30),
              //       gapPadding: 5,
              //       borderSide: const BorderSide(
              //         color: Colors.green,

              //         // strokeAlign: 5,width: 1
              //       ),
              //     ),
              //     //error border
              //     errorBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(30),
              //       borderSide: const BorderSide(
              //           color: Colors.red, strokeAlign: 5, width: 5),
              //     ),
              //   ),
              // ),
              //! Text Form Field

              //1. use Text Form Field
              //2. use Validator inside Text Form Field
              //3. use Form Widget and defile globel key var
              //4. check on key
              TextFormField(
                validator: (value) {
                  if (!value!.contains('@gmail.com')) {
                    return 'Email not vaild';
                  }
                  return null;
                },
                controller: emailController,
                keyboardType: TextInputType.phone,
                // onChanged: (value){
                //   print(value);
                // },
                // onSubmitted: (value) {
                //   print(value);
                // },
                decoration: InputDecoration(
                  // prefix: const Icon(Icons.mail),
                  prefixIcon: const Icon(Icons.mail),
                  suffix: const Icon(Icons.person),
                  hintText: 'Enter Your Name',
                  labelText: 'Email',
                  // enabled: false,
                  //border
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(30),
                  //   borderSide: const BorderSide(
                  //     color: Colors.deepOrange,
                  //   ),
                  // ),
                  //enabled Border
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                        color: Colors.black, strokeAlign: 5, width: 5),
                  ),
                  //Foucesd boeder
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    gapPadding: 5,
                    borderSide: const BorderSide(
                      color: Colors.green,

                      // strokeAlign: 5,width: 1
                    ),
                  ),
                  //error border
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                        color: Colors.red, strokeAlign: 5, width: 5),
                  ),
                ),
              ),
              // const TextField(),
              // const TextField(),
              // const TextField(),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwordController,
                obscureText: isVis,
                decoration: InputDecoration(
                  // prefix: const Icon(Icons.mail),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          isVis = !isVis;
                        },
                      );
                    },
                    icon: isVis
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  ),
                  hintText: 'Enter Your Password',
                  labelText: 'Password',
                  // enabled: false,
                  //border
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(30),
                  //   borderSide: const BorderSide(
                  //     color: Colors.deepOrange,
                  //   ),
                  // ),
                  //enabled Border
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        //  strokeAlign: 5, width: 5),
                      )),
                  //Foucesd boeder
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    gapPadding: 5,
                    borderSide: const BorderSide(
                      color: Colors.green,

                      // strokeAlign: 5,width: 1
                    ),
                  ),
                  //error border
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                        color: Colors.red, strokeAlign: 5, width: 5),
                  ),
                ),
              ),

              Text(
                data,
                style: const TextStyle(fontSize: 35),
              ),
              cutomButton(() {
                setState(() {
                  // if(isVis){
                  //    isVis= false;
                  // }else{
                  //   isVis= true;
                  // }
                  isVis = !isVis;
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Home(
                            emailController.text, passwordController.text)));
                // data = '';
                // if (formKey.currentState!.validate()) {
                //   print('data valid');
                // }
              }, 'clear Data')
            ],
          ),
        ),
      ),
    );
  }
}
