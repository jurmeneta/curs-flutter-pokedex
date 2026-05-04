import 'package:flutter/material.dart';
import 'package:pokedex/features/home/presentation/home_screen.dart'; // ignore: unused_import

import 'exemples/day1/day1_hub_screen.dart'; // ignore: unused_import
import 'exemples/day2/day2_hub_screen.dart'; // ignore: unused_import
import 'exemples/day3/day3_hub_screen.dart'; // ignore: unused_import

void main() {
  runApp(const PokedexApp());
}

class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const Day1HubScreen(),
      home: const HomeScreen(),
    );
  }
}
