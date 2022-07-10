import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_provider/app.dart';
import 'package:flutter_provider/flavor.dart';

void main() => runApp(
      Provider<Flavor>.value(
        value: Flavor.staging,
        child: const App(),
      ),
    );
