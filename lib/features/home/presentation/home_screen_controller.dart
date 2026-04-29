import '../data/pokemon_repository.dart';
import '../domain/pokemon_model.dart';

class HomeScreenController {
  HomeScreenController();

  List<Pokemon> getPokemons() {
    return PokemonRepository().getPokemons();
  }
}
