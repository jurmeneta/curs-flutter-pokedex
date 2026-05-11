import 'package:dio/dio.dart';

class PokemonRepository {
  const PokemonRepository();

  static final Dio _dio = Dio();
  static const String _pokemonListUrl = 'https://pokeapi.co/api/v2/pokemon';

  Future<List<String>> fetchPokemonNames() async {
    final response = await _dio.get(_pokemonListUrl);

    if (response.statusCode != 200) {
      throw Exception('PokéAPI error: ${response.statusCode}');
    }

    final body = response.data!;
    final results = body['results'] as List<dynamic>;
    return results
        .map((e) => (e as Map<String, dynamic>)['name'] as String)
        .toList();
  }
}
