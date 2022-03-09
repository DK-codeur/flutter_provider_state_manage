import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  Color? _myColor;

  Color get mycolor {
    return _myColor?? Colors.blue;
  }

  void changeAppBarColor(Color color) {
    _myColor = color;
    notifyListeners();
  }
}