import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/changenotifierprovider_model.dart';

class ChangeNotifierScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CjangeNotifierProvider'),
      ),
      body: Center(
        child: Consumer<ChangeNotifierModel>(
          builder: (context, changeModel, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('counter:${changeModel.counter}',
                    style: TextStyle(
                      fontSize: 36,
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
          Provider.of<ChangeNotifierModel>(context, listen: false)
              .incrementCounter();
        },
      ),
    );
  }
}
