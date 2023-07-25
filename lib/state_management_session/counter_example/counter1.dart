// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '/state_management_session/counter_example/cubits/cubit.dart';
// import '/state_management_session/counter_example/cubits/state.dart';

// class Counter1 extends StatelessWidget {
//   const Counter1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // print(counter);
//     return BlocConsumer<CounterCubit, CounterState>(
//         builder: (context, state) => Card(
//               elevation: 6,
//               child: SizedBox(
//                 width: 150,
//                 height: 150,
//                 child: Center(
//                   child: Text( BlocProvider.of<CounterCubit>(context).counter.toString(), style: TextStyle(fontSize: 40)),
//                 ),
//               ),
//             ),
//         listener: (context, state) {});
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/state_management_session/counter_example/counter_cubit/counter_cubit.dart';

import 'counter_cubit/counter_state.dart';

class Counter1 extends StatelessWidget {
  const Counter1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Card(
          elevation: 6,
          child: SizedBox(
            width: 150,
            height: 150,
            child: Center(
              child: Text(
                  BlocProvider.of<CounterCubit>(context)
                      .counterIncrement
                      .toString(),
                  style: const TextStyle(fontSize: 40)),
            ),
          ),
        );
      },
    );
  }
}
