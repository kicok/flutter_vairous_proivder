import 'package:flutter/foundation.dart';
import 'package:various_providers/providers/provider_model.dart';

class ChangeNotifierProxyModel with ChangeNotifier {
  int counter = 0;

  ProviderModel _providerModel;
  ProviderModel get providerModel => _providerModel;

  set provModel(ProviderModel providerModel) {
    if (_providerModel != providerModel) {
      _providerModel = providerModel;
      notifyListeners();
    }
  }

  void incrementCounter() {
    counter++;
    notifyListeners();
  }
}
