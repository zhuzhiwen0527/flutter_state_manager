import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_share/fr_counter/fr_counter_action.dart';

import 'package:flutter_share/fr_counter/fr_counter_state.dart';

Effect<FrCounterState> buildEffect() {
  return combineEffects(<Object, Effect<FrCounterState>>{
    FrCounterAction.incrementCounterAction: _onIncrementCounterAction,
  });
}
/*
* action：该对象中，我们可以拿到payload字段里面，在action里面保存的值
* ctx：该对象中，可以拿到state的参数，还可以通过ctx调用dispatch方法，调用action中的方法，在这里调用dispatch方法，一般是把处理好的数据，通过action中转到reducer层中更新数据
*/
void _onIncrementCounterAction(Action action, Context<FrCounterState> ctx) {
  print('effect 拦截 消息再次转发至reduce');
  int count = ctx.state.count + 1;
  ctx.dispatch(FrCounterActionCreator.updateCount(count));
  //此处可以处理相应的逻辑
}
