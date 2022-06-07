import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_share/fr_counter/fr_counter_action.dart';

import 'fr_counter_state.dart';

Reducer<FrCounterState> buildReducer() {
  return asReducer(
    <Object, Reducer<FrCounterState>>{
      FrCounterAction.updateCount: _onUpdateCount,
    },
  );
}

FrCounterState _onUpdateCount(FrCounterState state, Action action) {
  print('reduce 接收到 action');
  final FrCounterState newState = state.clone()..count = action.payload;
  return newState;
}

