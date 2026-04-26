import 'package:flutter/material.dart';

import 'example_05_pass_data_screen.dart';
import 'example_07_variables_screen.dart';
import 'example_08_var_final_const_late_screen.dart';
import 'example_09_null_safety_screen.dart';
import 'example_10_collections_screen.dart';
import 'example_11_functions_screen.dart';
import 'example_12_async_screen.dart';
import 'example_13_records_screen.dart';
import 'example_14_pattern_matching_screen.dart';

/// Menú per obrir pantalles d’exemple.
class ExamplesHub extends StatelessWidget {
  const ExamplesHub({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <({String title, String subtitle, Widget screen})>[
      (
        title: 'Passar dades al widget fill',
        subtitle: 'Constructor i paràmetres',
        screen: const Example05PassDataScreen(),
      ),
      (
        title: 'Variables i tipus bàsics',
        subtitle: 'String, int, double, bool',
        screen: const Example07VariablesScreen(),
      ),
      (
        title: 'var, final, const i late',
        subtitle: 'Com es declaren i quan canvien',
        screen: const Example08VarFinalConstLateScreen(),
      ),
      (
        title: 'Null safety',
        subtitle: '?., ??, String i String?',
        screen: const Example09NullSafetyScreen(),
      ),
      (
        title: 'Col·leccions',
        subtitle: 'Llistes, spread, Map, where',
        screen: const Example10CollectionsScreen(),
      ),
      (
        title: 'Funcions',
        subtitle: 'Arrow, paràmetres amb nom, required',
        screen: const Example11FunctionsScreen(),
      ),
      (
        title: 'async i await',
        subtitle: 'Future i codi asíncron',
        screen: const Example12AsyncScreen(),
      ),
      (
        title: 'Records',
        subtitle: 'Més d’un valor de retorn',
        screen: const Example13RecordsScreen(),
      ),
      (
        title: 'Pattern matching',
        subtitle: 'switch com a expressió',
        screen: const Example14PatternMatchingScreen(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Exemples')),
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (_, _) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item.title),
            subtitle: Text(item.subtitle),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute<void>(builder: (_) => item.screen));
            },
          );
        },
      ),
    );
  }
}
