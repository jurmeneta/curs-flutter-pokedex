enum PokemonType {
  normal('Normal'),
  fire('Foc'),
  water('Aigua'),
  electric('Elèctric'),
  grass('Planta'),
  ice('Gel'),
  fighting('Lluita'),
  poison('Verí'),
  ground('Terra'),
  flying('Vol'),
  psychic('Psíquic'),
  bug('Insecte'),
  rock('Roca'),
  ghost('Fantasma'),
  dragon('Drac'),
  dark('Fosc'),
  steel('Acer'),
  fairy('Fada');

  const PokemonType(this.label);

  final String label;
}

class Pokemon {
  const Pokemon({
    required this.id,
    required this.name,
    required this.type,
    required this.hp,
    required this.attack,
    required this.defense,
    this.imageUrl,
  });

  final int id;
  final String name;
  final PokemonType type;
  final int hp;
  final int attack;
  final int defense;

  final String? imageUrl;
}
