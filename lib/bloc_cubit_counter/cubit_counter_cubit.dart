import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cubit_counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState());

  void incrementCounter(){
    emit(state.clone()..count = ++ state.count);

  }
}
