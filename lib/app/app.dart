import 'package:flutter/material.dart';

import '../state_management_session/counter_example/home.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
        title: 'Fluter Up Academy',
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Counter(),
        ));
  }
}
