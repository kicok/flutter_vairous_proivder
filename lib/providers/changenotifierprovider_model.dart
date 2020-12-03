import 'package:flutter/foundation.dart';

class ChangeNotifierModel with ChangeNotifier {
  int counter = 0;

  void incrementCounter() {
    counter++;
    notifyListeners();
  }
}
