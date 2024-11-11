import 'package:flutter/material.dart';

class TranslatorProvider extends ChangeNotifier {
  bool _isTranslate = false;

  bool getTranslate() {
    return _isTranslate;
  }

  void Translate() {
    _isTranslate = !_isTranslate;
    notifyListeners();
  }
}
