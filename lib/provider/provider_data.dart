import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  int _x = 0;
  int get x => x;
  void incrementX() {
    _x++;
    notifyListeners(); // update() setState()
  }
}
