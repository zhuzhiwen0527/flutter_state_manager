
import 'package:flutter/cupertino.dart';

class ItemModel extends ChangeNotifier{

    int count = 0;

    void add(){
      count ++;
      notifyListeners();
    }


}