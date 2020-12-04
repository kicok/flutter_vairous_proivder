import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ValueListenableProviderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ValueListenableProvider'),
      ),
      body: Consumer<double>(
        builder: (context, dblCounter, child) {
          return Center(
            child: Text(
              'counter: ${dblCounter}',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}
