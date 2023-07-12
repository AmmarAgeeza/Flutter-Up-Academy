import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  String email;
  String password;
  Home(this.email, this.password, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Colors.purple,
                  )),
              hintText: "Enter your mail",
              labelText: "Email",
              prefixIcon: const Icon(Icons.email),
              suffixIcon: const Icon(Icons.remove_red_eye),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Colors.purple,
                  )),
              hintText: "Enter your phone",
              labelText: "phone",
              prefixIcon: const Icon(Icons.phone),
              //suffixIcon: const Icon(Icons.remove_red_eye),
            ),
          ),
          Text(
            email,
            style: TextStyle(fontSize: 35),
          ),
          Text(
            password,
            style: TextStyle(fontSize: 35),
          ),
        ]),
      ),
    );
  }
}
