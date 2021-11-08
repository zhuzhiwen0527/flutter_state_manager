class Bloc_counterState {
  Bloc_counterState init() {
    return Bloc_counterState();
  }

  int count = 0;

  Bloc_counterState clone() {
    return Bloc_counterState()..count = count;
  }
}
