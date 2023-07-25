// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '/state_management_session/counter_example/cubits/cubit.dart';

// import 'cubits/state.dart';

// class Counter2 extends StatelessWidget {
//   const Counter2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<CounterCubit, CounterState>(
//       listener: (context, state) {
//         // TODO: implement listener
//       },
//       builder: (context, state) {
//         return Card(
//           elevation: 6,
//           child: SizedBox(
//             width: 150,
//             height: 150,
//             child: Center(
//               child: Text(BlocProvider.of<CounterCubit>(context).counter.toString(), style: const TextStyle(fontSize: 40)),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit/counter_cubit.dart';
import 'counter_cubit/counter_state.dart';

class Counter2 extends StatelessWidget {
  const Counter2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<CounterCubit, CounterStates>(
      listener: (context, state) {
      if(state is DecrementState){
        print('DecrementState');
      }
      },
      child: Card(
          elevation: 6,
          child: SizedBox(
            width: 150,
            height: 150,
            child: Center(
              child: Text(
                  '${BlocProvider.of<CounterCubit>(context).counterDecrement}',
                  style: const TextStyle(fontSize: 40)),
            ),
          )),
    );
  }
}
