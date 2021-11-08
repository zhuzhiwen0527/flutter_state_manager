import 'package:flutter/material.dart';

class Provider_counterProvider extends ChangeNotifier {

    int count = 0;
    updateCount(){
      count ++;
      notifyListeners();
    }

}
