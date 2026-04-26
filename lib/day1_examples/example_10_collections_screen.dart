import 'package:flutter/material.dart';

class Example10CollectionsScreen extends StatelessWidget {
  const Example10CollectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final starters = ['Bulbasaur', 'Charmander', 'Squirtle'];
    final withPikachu = [...starters, 'Pikachu'];
    final stats = {'hp': 35, 'attack': 55};
    final strong = [10, 25, 50, 75].where((level) => level >= 50).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Col·leccions')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Text('Llistes, spread, Map i where:', style: theme.bodyLarge),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('[...starters, Pikachu]', style: theme.titleSmall),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      for (final s in withPikachu) Chip(label: Text(s)),
                    ],
                  ),
                  const Divider(height: 32),
                  Text("stats['attack']", style: theme.titleSmall),
                  const SizedBox(height: 8),
                  Text('${stats['attack']}', style: theme.headlineSmall),
                  const Divider(height: 32),
                  Text('.where((n) => n >= 50)', style: theme.titleSmall),
                  const SizedBox(height: 8),
                  Text(
                    '$strong',
                    style: theme.bodyLarge?.copyWith(fontFamily: 'monospace'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
