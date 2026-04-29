class Pokemon {
  const Pokemon({
    required this.id,
    required this.name,
    required this.type,
    required this.level,
  });

  final int id;
  final String name;
  final String type;
  final int level;

  String get imagePath => 'assets/images/$id.png';
}
