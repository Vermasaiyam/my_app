import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{
  int _count = 0;

  // get Value
  int getCount() => _count;

  // events
  void incrementCount(){
    _count++;
    notifyListeners();
  }
  void deccrementCount(){
    if (_count>0){
      _count++;
      notifyListeners();
    }
  }
}