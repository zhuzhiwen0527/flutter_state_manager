import 'package:bloc/bloc.dart';

import 'bloc_counter_event.dart';
import 'bloc_counter_state.dart';

class Bloc_counterBloc extends Bloc<Bloc_counterEvent, Bloc_counterState> {
  Bloc_counterBloc() : super(Bloc_counterState().init());

  @override
  Stream<Bloc_counterState> mapEventToState(Bloc_counterEvent event) async* {
    if (event is InitEvent) {
      yield await init();
    } else if(event is IncrementCounterEvent){
      yield state.clone()..count = ++ state.count;
    }
  }

  Future<Bloc_counterState> init() async {
    return state.clone();
  }
}
