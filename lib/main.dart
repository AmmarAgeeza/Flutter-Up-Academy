import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/state_management_session/counter_example/obsrever.dart';

import 'app/app.dart';

void main() {
   // cascade notation
  Bloc.observer = MyBlocObserver();
  runApp(const RootWidget());
  List<int> numbers=[1,2,3];//['1', '2', '3]
  List newData= numbers.map((e) => '$e').toList();
// List data=numbers.map((e) => '$e').toList();
// print(data);
// TaskModel model=TaskModel(id: id, title: title, note: note, date: date)
  // List<Widget> data = [const Text('add'), const Text('minus')];
  // print(data[0]);
  // data[1];
}




// https://jsonplaceholder.typicode.com/albums