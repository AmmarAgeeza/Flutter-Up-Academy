import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitailState());

  // variables
  int counterIncrement=0;
  int counterDecrement=0;
  //methods
  void increment(){
    counterIncrement++;
    emit(IncrecmentState());
  }
  void decrement(){
    counterDecrement--;
    emit(DecrementState());
  }
}
