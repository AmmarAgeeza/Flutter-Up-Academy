import 'package:flutter/material.dart';

import '../async_programming_session/future_flutter.dart';
import '../async_programming_session/shared_pref.dart';
import '../more_widgets/more_widgets.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
        title: 'Fluter Up Academy',
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: FutureApp(),
        ));
  }
}
