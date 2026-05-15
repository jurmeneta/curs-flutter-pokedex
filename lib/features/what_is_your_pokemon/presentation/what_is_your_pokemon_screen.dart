import 'package:flutter/material.dart';
import 'what_is_your_pokemon_controller.dart';
import '../../admin/domain/pokemon_model.dart';

/**
 * La classe passa a ser StatefulWidget perquè s'ha de poder treballar amb el valor introduït 
 * per l'usuari, sinó no es podria fer servir el controller per guardar el text introduït.
 */
class WhatIsYourPokemonScreen extends StatefulWidget {
  const WhatIsYourPokemonScreen({super.key});

  @override
  State<WhatIsYourPokemonScreen> createState() =>
      _WhatIsYourPokemonScreenState();
}

class _WhatIsYourPokemonScreenState extends State<WhatIsYourPokemonScreen> {
  final TextEditingController _nomController = TextEditingController();
  int? _idPokemon;
  final _controller = WhatIsYourPokemonController();
  Pokemon? _pokemon;
  bool _loading = false;
  String? _error;

  @override
  void dispose() {
    _nomController.dispose();
    super.dispose();
  }

  void _calculaPokemonId() async {
    String nom = _nomController.text;

    //Agafo caràcter per caràcters del nom introduït i vaig sumant el seu valor en ascii.
    //Amb el sumatori fet li aplico el mòdul 1025 (que és el nombre de pokemons que hi ha a la pokeapi)
    //i li sumo 1 perquè els ids de la pokeapi comencen a 1 i no a 0.
    int suma_caracters = 0;
    for (final char in nom.codeUnits) {
      suma_caracters += char;
    }
    int pokemonId = (suma_caracters % 1025) + 1;
    //Aquí interessa actualitzar el valor del id Pokemon per poder-lo mostrar
    //per pantalla en un text widget, seria com un repaint en el canvas de java
    setState(() {
      _idPokemon = pokemonId;
      _loading = true;
      _error = null;
    });

    print('Pokemon ID: $pokemonId'); // Mostra el id per consola

    //aquesta part és per agafar i obtenir el pokemon segons l'ID calculat
    //llavors, el controlador és el mateix que el llistat però amb el nou mètode
    //i l'estructura és la mateixa, però en vers de tenir un llistat es té un sol
    //element (pokemon)
    try {
      final pokemon = await _controller.obtenirPokemonPerId(pokemonId);
      setState(() {
        _pokemon = pokemon;
        _error = null;
      });
    } catch (e) {
      setState(() {
        _error = 'Error: $e';
      });
    } finally {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          22.0,
        ), //prova de com posar marges, tipus padding en javascript
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('What is Your Pokemon?'),
            Text(
              "\nEn aquesta pantalla pots introduir el teu nom i et diré quin és el Pokemon que et correspon!",
            ),
            Text('\nIntrodueix el teu nom:\n\n'),
            TextField(controller: _nomController),
            ElevatedButton(
              onPressed: _calculaPokemonId,
              child: Text('Cercar el teu Pokemon!'),
            ),
            if (_idPokemon != null) ...[
              Text('El teu Pokemon és el número: $_idPokemon \n'),
            ],
            if (_pokemon != null) ...[
              Text('Name: ${_pokemon!.name}'),
              Text('ID: ${_pokemon!.id}'),
              Text('Type: ${_pokemon!.type.label}'),
              Text('HP: ${_pokemon!.hp}'),
              Text('Attack: ${_pokemon!.attack}'),
              Text('Defense: ${_pokemon!.defense}'),
            ],
          ],
        ),
      ),
    );
  }
}
