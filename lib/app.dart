import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_provider/pages/home_page.dart';
import 'package:flutter_provider/flavor.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Flavor flavor = Provider.of<Flavor>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: flavor != Flavor.production,
      title:
          'Flutter Provider${flavor == Flavor.production ? '' : ' (${flavor.name})'}',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) =>
            const HomePage(title: 'Flutter Provider'),
      },
    );
  }
}
