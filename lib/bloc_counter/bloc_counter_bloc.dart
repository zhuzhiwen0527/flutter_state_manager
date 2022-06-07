import 'package:bloc/bloc.dart';

import 'bloc_counter_event.dart';
import 'bloc_counter_state.dart';

class BlocCounterBloc extends Bloc<BlocCounterEvent, BlocCounterState> {
  BlocCounterBloc() : super(BlocCounterState().init()){

    on<InitEvent>((event, emit) {
        emit(state.clone());
    });

  }

  @override
  Stream<BlocCounterState> mapEventToState(BlocCounterEvent event) async* {

    if(event is IncrementCounterEvent){
      yield state.clone()..count = ++ state.count;
    }
  }

  Future<BlocCounterState> init() async {
    return state.clone();
  }
}
