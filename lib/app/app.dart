import 'package:flutter/material.dart';

import '../more_widgets/more_widgets.dart';


class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return    MaterialApp(
      title: 'Fluter Up Academy',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: MoreWidgets(),)
    );
  }
}