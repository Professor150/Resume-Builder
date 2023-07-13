import 'package:flutter/material.dart';

class CreateNewSectionProvider with ChangeNotifier {
  String? _options;

  String? get options => _options;

  void setOption(String? option) {
    _options = option;
    notifyListeners();
  }
}
