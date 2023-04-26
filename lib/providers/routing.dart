import 'package:flutter/material.dart';

class Routing extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
