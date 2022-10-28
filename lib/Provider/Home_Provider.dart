import 'package:flutter/foundation.dart';


class HomeProvider with ChangeNotifier{
  double _val = 0.4;
  double get val => _val;

  void setValue(double value){
    _val = value;
    notifyListeners();
  }
}