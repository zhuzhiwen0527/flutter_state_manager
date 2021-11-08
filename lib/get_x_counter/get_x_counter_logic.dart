import 'package:get/get.dart';

import 'get_x_counter_state.dart';

class GetX_counterLogic extends GetxController {
  final state = GetX_counterState();

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void incrementCounter() => state.count.value ++;
}
