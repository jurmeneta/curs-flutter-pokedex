// Smoke test: assegura que l’entrada configurada a [PokedexApp] arrenca.

import 'package:flutter_test/flutter_test.dart';

import 'package:pokedex/main.dart';

void main() {
  testWidgets('App boots and shows the hub title', (tester) async {
    await tester.pumpWidget(const PokedexApp());

    expect(find.text('Dia 5 · Exemples'), findsOneWidget);
  });
}
