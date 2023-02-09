import 'dart:typed_data';

import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  int _x = 0;
  int get x => _x;
  void incrementX() {
    _x++;
    notifyListeners(); // update() setState()
  }
}
