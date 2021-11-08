import 'package:fish_redux/fish_redux.dart';

class Fr_counterState implements Cloneable<Fr_counterState> {

  int count = 0;

  @override
  Fr_counterState clone() {
    return Fr_counterState()..count = count;
  }
}

Fr_counterState initState(Map<String, dynamic> args) {
  return Fr_counterState();
}
