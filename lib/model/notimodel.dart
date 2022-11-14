import 'package:flutter/material.dart';

class NotiModel extends ChangeNotifier{
  String _text1 = "Text 1 in NotiModel";

  String get text1 => _text1;

  set text1(String value) {
    _text1 = value;
    notifyListeners();
  }

  String _text2 = "Text 2 in NotiModel";

  String get text2 => _text2;

  set text2(String value) {
    _text2 = value;
  }
}