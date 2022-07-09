import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Provider',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: const HomePage(title: 'Flutter Provider'),
      );
}
