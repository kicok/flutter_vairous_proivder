import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:various_providers/screens/changenotifierprovider_screen.dart';

import './providers/changenotifierprovider_model.dart';
import './screens/provider_screen.dart';
import './providers/provider_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ProviderModel>(
          create: (_) => ProviderModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChangeNotifierModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Provider'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProviderScreen();
                    },
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('ChangeNotifierProvider'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ChangeNotifierScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
