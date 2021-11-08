import 'package:get/get.dart';

class GetXEasyCounterLogic extends GetxController {

  int count = 0;


  void incrementCounter() {
    count ++;
    update();
  }

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
}
