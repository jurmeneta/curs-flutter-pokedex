import 'package:flutter/material.dart';

import 'day1_examples/day1_examples_hub.dart'; // ignore: unused_import

void main() {
  runApp(const PokedexApp());
}

class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Center(
          child: Text('Hola, Flutter!', style: TextStyle(fontSize: 32)),
        ),
      ),
      // home: const ExamplesHub(),
    );
  }
}
