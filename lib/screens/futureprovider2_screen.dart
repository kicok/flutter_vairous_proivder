import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/futureprovider_model.dart';

class FutureProviderScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FutuerProvider2'),
        ),
        body: Consumer<FutureProviderModel>(
          builder: (context, futureProv, child) {
            return Center(
              child: Text(
                'counter:${futureProv.counter}',
                style: TextStyle(fontSize: 36),
              ),
            );
          },
        ));
  }
}
