import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum Fr_counterAction { incrementCounterAction,updateCount }

class Fr_counterActionCreator {
  static Action onAction() {
    return  Action(Fr_counterAction.incrementCounterAction);
  }

  static Action updateCount(int count) {
    return Action(Fr_counterAction.updateCount, payload: count);
  }
}
