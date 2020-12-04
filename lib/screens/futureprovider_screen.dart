import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FutureProviderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FutuerProvider'),
        ),
        body: Consumer<Map<String, int>>(
          builder: (context, futureProv, child) {
            return Center(
              child: Text(
                'counter:${futureProv['value']}',
                style: TextStyle(fontSize: 36),
              ),
            );
          },
        ));
  }
}
