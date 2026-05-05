import 'package:flutter/material.dart';

import 'block1_responsive_platform/b1_hub_screen.dart';
import 'block2_system_preferences/shared_preferences_demo_screen.dart';
import 'block3_api_calls/b3_hub_screen.dart';
import 'block4_json_conversion/b4_hub_screen.dart';
import 'block5_pagination_search/b5_hub_screen.dart';
import 'widgets/root_hub.dart';

class Day4HubScreen extends StatelessWidget {
  const Day4HubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Day4RootHub(
      title: 'Dia 4 · Exemples',
      sections: [
        Day4HubSection(
          badge: '1',
          title: 'Bloc 1 · Web, escriptori i responsive',
          subtitle:
              'LayoutBuilder, MediaQuery, shells adaptatius, menús, punter i scroll',
          screen: Day4B1HubScreen(),
        ),
        Day4HubSection(
          badge: '2',
          title: 'Bloc 2 · SharedPreferences',
          subtitle:
              'getInstance, get/set, claus i persistència entre sessions.',
          screen: SharedPreferencesDemoScreen(),
        ),
        Day4HubSection(
          badge: '3',
          title: 'Bloc 3 · Crides API',
          subtitle: 'http, dio i FutureBuilder/StreamBuilder.',
          screen: Day4B3HubScreen(),
        ),
        Day4HubSection(
          badge: '4',
          title: 'Bloc 4 · Conversió JSON',
          subtitle:
              'fromJson manual i codegen amb json_serializable / freezed.',
          screen: Day4B4HubScreen(),
        ),
        Day4HubSection(
          badge: '5',
          title: 'Bloc 5 · Paginació i cerca',
          subtitle: 'Scroll infinit (offset/limit) i cerca amb debounce.',
          screen: Day4B5HubScreen(),
        ),
      ],
    );
  }
}
