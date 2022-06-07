class BlocCounterState {
  BlocCounterState init() {
    return BlocCounterState();
  }

  int count = 0;

  BlocCounterState clone() {
    return BlocCounterState()..count = count;
  }
}

