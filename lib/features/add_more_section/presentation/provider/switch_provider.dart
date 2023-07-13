import 'package:flutter/material.dart';

class SwitchProvider with ChangeNotifier {
  final List<bool> _switchValues = List.filled(9, false);

  List<bool> get switchValues => _switchValues;

  void setSwitchValue(int index, bool newValue) {
    _switchValues[index] = newValue;
    notifyListeners();
  }
}
