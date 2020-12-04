import 'package:flutter/foundation.dart';

import '../providers/futureprovider_model.dart';
import '../providers/provider_model.dart';
import '../providers/streamprovider_model.dart';

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

  FutureProviderModel _fModel;
  FutureProviderModel get fModel => _fModel;

  set fModel(FutureProviderModel fModel) {
    if (_fModel != fModel) {
      _fModel = fModel;
      notifyListeners();
    }
  }

  StreamProviderModel _sModel;
  StreamProviderModel get sModel => _sModel;
  int get myStreamValue => sModel.counter * 10;

  set sModel(StreamProviderModel sModel) {
    if (_sModel != sModel) {
      _sModel = sModel;
      notifyListeners();
    }
  }

  void incrementCounter() {
    counter++;
    notifyListeners();
  }
}
