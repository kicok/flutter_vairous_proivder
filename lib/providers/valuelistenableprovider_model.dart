import 'package:flutter/foundation.dart';

class ValueListenableProviderModel extends ValueNotifier<double> {
  ValueListenableProviderModel(double counter) : super(counter) {
    incrementDoubleCounter();
  }

  void incrementDoubleCounter() async {
    Stream<double> stream = Stream<double>.periodic(Duration(seconds: 1), (x) {
      return x + 1.0;
    }).take(10);

    await for (double x in stream) {
      value = value + x; // ValueNotifier 클래스가 원래 가지고 있던 value 값을 활용하여 value + x
      // 0.0 + 1.0,
      // 1.0 + 2.0,
      // 3.0 + 3.0
      // 6.0 + 4.0
      // 10.0 + 5.0 ....
      // ==> 1~10까지의 합
      print('value in ValueListenableProvider: $value');
    }
  }
}
