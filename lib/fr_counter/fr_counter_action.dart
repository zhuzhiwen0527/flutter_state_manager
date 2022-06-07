import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FrCounterAction { incrementCounterAction,updateCount }

class FrCounterActionCreator {
  static Action incrementCounterAction() {
    return  Action(FrCounterAction.incrementCounterAction);
  }

  static Action updateCount(int count) {
    return Action(FrCounterAction.updateCount, payload: count);
  }
}
