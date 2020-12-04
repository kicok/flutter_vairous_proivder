import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/futureprovider_model.dart';
import '../providers/streamprovider_model.dart';
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
        child: Consumer4<ProviderModel, FutureProviderModel,
            StreamProviderModel, ChangeNotifierProxyModel>(
          builder: (context, provModel, fModel, sModel, cnpModel, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('change counter:${cnpModel.counter}',
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
                SizedBox(height: 20),
                Text('Future counter:${fModel.counter}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 20),
                Text('Stream counter:${sModel.counter}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 20),
                Text('cnpModel sModel.counter * 10:${cnpModel.myStreamValue}',
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
