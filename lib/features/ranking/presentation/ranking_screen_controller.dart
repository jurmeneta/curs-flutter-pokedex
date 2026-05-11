import '../data/pokemon_repository.dart';

class RankingScreenController {
  final PokemonRepository _repository = PokemonRepository();

  Future<List<String>> fetchPokemonNames() {
    return _repository.fetchPokemonNames();
  }
}
