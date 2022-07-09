import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_provider/providers/counter_provider.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        context.watch<CounterProvider>().count.toString(),
        style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      );
}
