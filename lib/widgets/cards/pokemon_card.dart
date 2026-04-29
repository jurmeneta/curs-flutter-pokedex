import 'package:flutter/material.dart';

import '../../features/home/domain/pokemon_model.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({super.key, required this.pokemon});

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
