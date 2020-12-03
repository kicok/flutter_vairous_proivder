import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/provider_model.dart';
import '../providers/changenotifier_proxyprovider_model.dart';

class ChangeNotifierProxyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChangeNotifierProvider'),
      ),
      body: Center(
        child: Consumer2<ProviderModel, ChangeNotifierProxyModel>(
          builder: (context, provModel, changeModel, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('counter:${changeModel.counter}',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 20),
                Text('baseUrl:${provModel.baseUrl}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon((Icons.add)),
        onPressed: () {
          Provider.of<ChangeNotifierProxyModel>(context, listen: false)
              .incrementCounter();
        },
      ),
    );
  }
}
