import 'package:flutter/foundation.dart';

class HomeSliderProvider2 with ChangeNotifier{
  double _val = 0.2;
  double get value => _val;

  void setVal(double val){
    _val = val;
    notifyListeners();
  }


}