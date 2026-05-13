import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/app_theme.dart';
import 'package:pokedex/features/authentication/presentation/loading_screen.dart'; // ignore: unused_import
import 'package:pokedex/features/home/presentation/home_screen.dart'; // ignore: unused_import

import 'exemples/day1/day1_hub_screen.dart'; // ignore: unused_import
import 'exemples/day2/day2_hub_screen.dart'; // ignore: unused_import
import 'exemples/day3/day3_hub_screen.dart'; // ignore: unused_import
import 'exemples/day4/day4_hub_screen.dart'; // ignore: unused_import
import 'exemples/day5/day5_hub_screen.dart'; // ignore: unused_import
import 'exemples/day6/day6_hub_screen.dart'; // ignore: unused_import

void main() {
  runApp(const PokedexApp());
}

class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: const Day6HubScreen(),
      // home: const LoadingScreen(),
    );
  }
}
