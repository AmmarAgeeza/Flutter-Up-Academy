import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/state_management_session/counter_example/obsrever.dart';

import 'app/app.dart';

void main() {
    Bloc.observer = MyBlocObserver();

  runApp(const RootWidget());

  // List<Widget> data = [const Text('add'), const Text('minus')];
  // print(data[0]);
  // data[1];
 
}
