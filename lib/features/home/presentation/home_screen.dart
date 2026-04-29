import 'package:flutter/material.dart';

import '../../../widgets/cards/pokemon_card.dart';
import 'home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeScreenController();
    final pokemons = controller.getPokemons();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (final pokemon in pokemons) PokemonCard(pokemon: pokemon),
        ],
      ),
    );
  }
}
