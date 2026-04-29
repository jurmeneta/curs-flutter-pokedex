import 'package:flutter/material.dart';

import 'exemples/day1/day1_hub_screen.dart'; // ignore: unused_import
import 'exemples/day2/day2_hub_screen.dart'; // ignore: unused_import

void main() {
  runApp(const PokedexApp());
}

class Pokemon {
  const Pokemon({
    required this.id,
    required this.name,
    required this.type,
    required this.level,
  });

  final int id;
  final String name;
  final String type;
  final int level;

  String get imagePath => 'assets/images/$id.png';
}

class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Day2HubScreen(),

      // home: const Day1HubScreen(),

      //   home: Scaffold(
      //     body: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         for (final pokemon in _laTevaLlista) PokemonItem(pokemon: pokemon),
      //       ],
      //     ),
      //   ),
    );
  }
}

class PokemonItem extends StatelessWidget {
  const PokemonItem({super.key, required this.pokemon});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(pokemon.imagePath, width: 56, height: 56),
      title: Text(pokemon.name),
      subtitle: Text('${pokemon.type} · Level ${pokemon.level}'),
    );
  }
}
