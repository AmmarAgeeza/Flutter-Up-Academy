import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/api_session_part3/core/database/local/cache/cache_helper.dart';
import 'package:flutter_ui/state_management_session/counter_example/obsrever.dart';

import 'api_session_part3/core/services/service_locator.dart';
import 'app/app.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  try{dividedbyNum(1,0);}
  on InvalidException catch (error){
    print(error.message);
  }
  catch(e){print(e.toString());}
  // cascade notation
  Bloc.observer = MyBlocObserver();
  setup();
  await sl<CacheHelper>().init();
  runApp(const RootWidget());
  // List<int> numbers = [1, 2, 3]; //['1', '2', '3]
  // List newData = numbers.map((e) => '$e').toList();
  // List data=numbers.map((e) => '$e').toList();
  // print(data);
  // TaskModel model=TaskModel(id: id, title: title, note: note, date: date)
  // List<Widget> data = [const Text('add'), const Text('minus')];
  // print(data[0]);
  // data[1];
}


void dividedbyNum(num1,num2){
if(num2==0){
throw InvalidException('invalid number');
}
var div = num1/num2;
print(div);
}
class InvalidException implements Exception{
  final String message;

  InvalidException(this.message);
}
// https://jsonplaceholder.typicode.com/albums