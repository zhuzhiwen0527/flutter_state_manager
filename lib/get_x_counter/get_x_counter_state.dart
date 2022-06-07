import 'package:get/get.dart';
class GetXCounterState {

  final count =  0.obs;

  void change (){
    count.value = 1;
  }
}
