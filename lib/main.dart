import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/sqflite_session/cubit/sqflite_cubit.dart';
import 'package:flutter_ui/sqflite_session/task_model.dart';
import 'package:flutter_ui/state_management_session/counter_example/obsrever.dart';

import 'app/app.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  DB()..getData();
  runApp(const RootWidget());
  List<int> numbers=[1,2,3];//['1', '2', '3]
List data=numbers.map((e) => '$e').toList();
print(data);
// TaskModel model=TaskModel(id: id, title: title, note: note, date: date)
  // List<Widget> data = [const Text('add'), const Text('minus')];
  // print(data[0]);
  // data[1];
}
