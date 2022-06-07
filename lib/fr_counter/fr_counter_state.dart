import 'package:fish_redux/fish_redux.dart';

class FrCounterState implements Cloneable<FrCounterState> {

  int count = 0;

  @override
  FrCounterState clone() {
    return FrCounterState()..count = count;
  }
}

FrCounterState initState(Map<String, dynamic> args) {
  return FrCounterState();
}
