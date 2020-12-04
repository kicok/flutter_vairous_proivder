import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:various_providers/providers/futureprovider_model.dart';

import './screens/futureprovider2_screen.dart';
import './screens/futureprovider_screen.dart';
import './screens/valuenotifier_screen.dart';
import './providers/changenotifier_proxyprovider_model.dart';
import './screens/changenotifier_proxyprovider_screen.dart';
import './screens/changenotifierprovider_screen.dart';
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
        ChangeNotifierProxyProvider<ProviderModel, ChangeNotifierProxyModel>(
          create: (_) => ChangeNotifierProxyModel(),
          update: (context, provModel, cnpModel) {
            cnpModel.provModel = provModel;
            return cnpModel;
          },
        ),
        ChangeNotifierProvider<ValueNotifier<int>>(
          create: (_) => ValueNotifier<int>(0),
        ),
        FutureProvider<Map<String, int>>(
          initialData: {'value': 0},
          create: (_) async {
            await Future.delayed(Duration(seconds: 2));
            return {'value': 15};
          },
        ),
        FutureProvider<FutureProviderModel>(
          initialData: FutureProviderModel(counter: 0),
          create: (_) => futuerProviderFunc(),
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
            ),
            RaisedButton(
              child: Text('ChangeNotifierProxyProvider'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ChangeNotifierProxyScreen();
                    },
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('ValueNotifier'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ValueNotifierScreen();
                    },
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('FutureProvider(FutureBuild)'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FutureProviderScreen();
                    },
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('FutureProvider2'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FutureProviderScreen2();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
