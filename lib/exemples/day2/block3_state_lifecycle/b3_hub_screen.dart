import 'package:flutter/material.dart';

import '../widgets/block_hub.dart';
import 'app_lc_screen.dart';
import 'widget_lc_screen.dart';

class Day2B3HubScreen extends StatelessWidget {
  const Day2B3HubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Day2BlockHub(
      appBarTitle: 'Dia 2 · Estat i lifecycles',
      items: [
        Day2DemoItem(
          title: 'Cicle de vida del StatefulWidget',
          subtitle:
              'initState, build, dispose… Sense setState, no hi ha repinteig del que depèn del estat local.',
          screen: WidgetLcScreen(),
        ),
        Day2DemoItem(
          title: "Cicle de vida de l'app",
          subtitle:
              'WidgetsBindingObserver: resumed, inactive, paused, detached.',
          screen: AppLcScreen(),
        ),
      ],
    );
  }
}
