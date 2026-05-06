import 'dart:convert';
import 'dart:typed_data';

import '../domain/pokemon_model.dart';

class AdminScreenController {
  final List<Pokemon> pokemons = [];

  void addPokemon(Pokemon pokemon) {
    pokemons.add(pokemon);
  }

  Pokemon createPokemon({
    required String id,
    required String name,
    required PokemonType type,
    required String hp,
    required String attack,
    required String defense,
    required Uint8List imageBytes,
    required String? mimeType,
  }) {
    final mime = mimeType ?? 'image/jpeg';
    final imageUrl = 'data:$mime;base64,${base64Encode(imageBytes)}';

    return Pokemon(
      id: int.parse(id.trim()),
      name: name.trim(),
      type: type,
      hp: int.parse(hp.trim()),
      attack: int.parse(attack.trim()),
      defense: int.parse(defense.trim()),
      imageUrl: imageUrl,
    );
  }

  String? validateId(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'L\'ID és obligatori';
    }
    final id = int.tryParse(value.trim());
    if (id == null) {
      return 'L\'ID ha de ser un número';
    }
    if (id <= 0) {
      return 'L\'ID ha de ser més gran que 0';
    }
    if (pokemons.any((p) => p.id == id)) {
      return 'Ja existeix un Pokémon amb aquest ID';
    }
    return null;
  }

  String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'El nom és obligatori';
    }
    if (value.trim().length < 2) {
      return 'El nom ha de tenir almenys 2 caràcters';
    }
    return null;
  }

  String? validateType(PokemonType? value) =>
      value == null ? 'Selecciona un tipus' : null;

  String? _validateStat(String? value, String label) {
    if (value == null || value.trim().isEmpty) {
      return 'El $label és obligatori';
    }
    final n = int.tryParse(value.trim());
    if (n == null) {
      return 'El $label ha de ser un número';
    }
    if (n < 1 || n > 255) {
      return 'El $label ha d\'estar entre 1 i 255';
    }
    return null;
  }

  String? validateHp(String? value) => _validateStat(value, 'PS');

  String? validateAttack(String? value) => _validateStat(value, 'atac');

  String? validateDefense(String? value) => _validateStat(value, 'defensa');

  String? validateImage(bool hasImage) =>
      hasImage ? null : 'Has de seleccionar una imatge';
}
