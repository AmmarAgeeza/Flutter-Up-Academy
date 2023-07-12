import 'package:flutter/material.dart';

import '../inteactive _widgets/login_sreen.dart';


class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      title: 'Fluter Up Academy',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: LoginScreen(),)
    );
  }
}