import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int count = 0;
  void increment() {
    count++;
    notifyListeners();
  }

  void decrement() {
    if (count == 0) return;
    count--;
    notifyListeners();
  }
}
