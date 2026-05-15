import '../../ranking/data/pokemon_repository.dart';
import '../../admin/domain/pokemon_model.dart';

//de la mateixa manera que tenim un ranking screen controller, es defineix
//també un controller per la screen de quin és el teu pokemon, la idea és la mateixa
class WhatIsYourPokemonController {
  WhatIsYourPokemonController({PokemonRepository? repository})
      : _repository = repository ?? PokemonRepository();

  final PokemonRepository _repository;

  Future<Pokemon> obtenirPokemonPerId(int id) {
    return _repository.obtenirPokemonPerId(id);
  }

  void dispose() => _repository.close();
}