part of 'cubit_counter_cubit.dart';

 class CounterState {
   CounterState init() {
    return CounterState();
  }

  int count = 0;

   CounterState clone() {
    return CounterState()..count = count;
  }
}


