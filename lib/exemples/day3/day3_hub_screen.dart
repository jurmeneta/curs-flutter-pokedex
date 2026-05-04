import 'package:flutter/material.dart';

import 'block1_state_lifecycle/b1_hub_screen.dart';
import 'block2_animations/b2_hub_screen.dart';
import 'block3_inputs_forms/b3_hub_screen.dart';
import 'block4_responsive_platform/b4_hub_screen.dart';
import 'block5_system_preferences/shared_preferences_demo_screen.dart';
import 'widgets/root_hub.dart';

class Day3HubScreen extends StatelessWidget {
  const Day3HubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Day3RootHub(
      title: 'Dia 3 · Exemples',
      sections: [
        Day3HubSection(
          badge: '1',
          title: 'Bloc 1 · Estat i lifecycles',
          subtitle: 'StatefulWidget lifecycle, AppLifecycleState',
          screen: Day3B1HubScreen(),
        ),
        Day3HubSection(
          badge: '2',
          title: 'Bloc 2 · Animació i widgets',
          subtitle:
              'Controller/Tween, extensions, animacions implícites i explícites',
          screen: Day3B2HubScreen(),
        ),
        Day3HubSection(
          badge: '3',
          title: 'Bloc 3 · Formularis i inputs',
          subtitle:
              'Form/validació, focus, selecció, pickers, camps avançats, diàlegs',
          screen: Day3B3HubScreen(),
        ),
        Day3HubSection(
          badge: '4',
          title: 'Bloc 4 · Web, escriptori i responsive',
          subtitle:
              'LayoutBuilder, MediaQuery, shells adaptatius, menús, punter i scroll',
          screen: Day3B4HubScreen(),
        ),
        Day3HubSection(
          badge: '5',
          title: 'Bloc 5 · SharedPreferences',
          subtitle: 'getInstance, get/set, claus i persistència entre sessions.',
          screen: SharedPreferencesDemoScreen(),
        ),
      ],
    );
  }
}
