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

const List<Pokemon> _equip = [
  Pokemon(id: 1, name: 'Bulbasaur', type: 'Grass / Poison', level: 12),
  Pokemon(id: 58, name: 'Ivysaur', type: 'Grass / Poison', level: 18),
  Pokemon(id: 3, name: 'Venusaur', type: 'Grass / Poison', level: 36),
  Pokemon(id: 4, name: 'Charmander', type: 'Fire', level: 10),
  Pokemon(id: 7, name: 'Squirtle', type: 'Water', level: 8),
];

class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const Day2HubScreen(),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (final pokemon in _equip) PokemonItem(pokemon: pokemon),
          ],
        ),
      ),
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
