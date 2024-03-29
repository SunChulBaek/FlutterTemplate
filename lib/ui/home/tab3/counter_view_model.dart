import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class CounterViewModel with ChangeNotifier {
  int _value = 0;

  int get value => _value;

  void increment() {
    _value++;
    notifyListeners();
  }

  void decrement() {
    _value--;
    notifyListeners();
  }
}