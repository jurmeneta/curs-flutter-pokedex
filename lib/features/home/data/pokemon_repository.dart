import '../domain/pokemon_model.dart';

class PokemonRepository {
  const PokemonRepository();

  List<Pokemon> getPokemons() {
    return [
      Pokemon(id: 1, name: 'Bulbasaur', type: 'Grass / Poison', level: 12),
      Pokemon(id: 58, name: 'Ivysaur', type: 'Grass / Poison', level: 18),
      Pokemon(id: 3, name: 'Venusaur', type: 'Grass / Poison', level: 36),
      Pokemon(id: 4, name: 'Charmander', type: 'Fire', level: 10),
      Pokemon(id: 7, name: 'Squirtle', type: 'Water', level: 8),
    ];
  }
}
