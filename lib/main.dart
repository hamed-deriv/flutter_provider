import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_provider/pages/home_page.dart';
import 'package:flutter_provider/providers/counter_provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
      ],
      child: const App(),
    ));

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Provider',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(title: 'Flutter Provider'),
        },
      );
}
