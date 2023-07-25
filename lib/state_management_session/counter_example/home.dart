import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/state_management_session/counter_example/counter_cubit/counter_cubit.dart';

import 'counter_cubit/counter_state.dart';
import 'dashboard.dart';

class Counter extends StatefulWidget {
  Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 4;
  int number = 1;
  @override
  Widget build(BuildContext context) {
    print(number++);
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Scaffold(
          appBar: AppBar(title: const Text('Demo')),
          body: Center(
            child: Dashboard(),
          ),
          floatingActionButton: BlocBuilder<CounterCubit,CounterStates>(
            builder: (context, state) => Column(
              children: [
                FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () {
                   
                   BlocProvider.of<CounterCubit>(context).increment();
                   
                   
                  //   //loading
                  //   setState(() {});
                  //   counter++;
                  // },
                  }
                  // //sucess increment
                ),
                FloatingActionButton(
                  child: const Icon(Icons.minimize),
                  onPressed: () {
                   
                   BlocProvider.of<CounterCubit>(context).decrement();
                   
                   
                  //   //loading
                  //   setState(() {});
                  //   counter++;
                  // },
                  }
                  // //sucess increment
                ),
              ],
            ),
          )),
    );
  }
}
