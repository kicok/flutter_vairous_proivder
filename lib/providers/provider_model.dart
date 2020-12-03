import 'dart:io';

class ProviderModel {
  int counter = 0;

  String baseUrl =
      Platform.isAndroid ? 'http://10.0.22:3000' : 'http://localhost:3000';

  void incrementCounter() {
    counter++;
    print('Counter valuein ProviderModel : $counter');
  }
}
