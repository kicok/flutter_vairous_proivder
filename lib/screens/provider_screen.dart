import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:various_providers/providers/provider_model.dart';

class ProviderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Center(
        child: Center(
          child: Consumer<ProviderModel>(
            builder: (context, provModel, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'counter:${provModel.counter}',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'counter:${provModel.baseUrl}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                ],
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final provModel = Provider.of<ProviderModel>(context, listen: false);
          provModel.incrementCounter();
        },
      ),
    );
  }
}
