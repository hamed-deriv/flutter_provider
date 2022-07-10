import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(elevation: 0, title: Text(title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('You have pushed the button this many times:'),
              SizedBox(height: 16),
              // Counter(),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              child: const Icon(Icons.remove),
              tooltip: 'Decrement',
              onPressed: () {},
            ),
            const SizedBox(width: 8),
            FloatingActionButton(
              child: const Icon(Icons.refresh),
              tooltip: 'Reset',
              onPressed: () {},
            ),
            const SizedBox(width: 8),
            FloatingActionButton(
              child: const Icon(Icons.add),
              tooltip: 'Increment',
              onPressed: () {},
            ),
          ],
        ),
      );
}
