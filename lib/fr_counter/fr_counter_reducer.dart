import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_share/fr_counter/fr_counter_action.dart';

import 'fr_counter_state.dart';

Reducer<Fr_counterState> buildReducer() {
  return asReducer(
    <Object, Reducer<Fr_counterState>>{
      Fr_counterAction.updateCount: _onUpdateCount,
    },
  );
}

Fr_counterState _onUpdateCount(Fr_counterState state, Action action) {
  print('reduce 接收到 action');
  final Fr_counterState newState = state.clone()..count = action.payload;
  return newState;
}

