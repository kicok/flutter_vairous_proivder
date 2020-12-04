import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/streamprovider_model.dart';

class StreamProviderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamProvider'),
      ),
      body: Consumer<StreamProviderModel>(
        builder: (context, sProv, child) {
          return Center(
            child: Text(
              'counter:${sProv.counter}',
              style: TextStyle(fontSize: 36),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final sModel =
              Provider.of<StreamProviderModel>(context, listen: false);
          sModel.incrementcounter();
        },
      ),
    );
  }
}
