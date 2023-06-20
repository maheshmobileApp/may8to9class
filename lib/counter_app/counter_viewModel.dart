import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;
  int get counter => this._counter;

  set counter(int value) => this._counter = value;

  void increment() {
    _counter++;

    // 0++ = 1
   notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}
