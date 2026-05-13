import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/features/admin/presentation/admin_screen.dart';
import 'package:pokedex/features/authentication/presentation/loading_screen.dart';
import 'package:pokedex/features/home/presentation/home_screen.dart';
import 'package:pokedex/features/settings/presentation/settings_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  generateForDir: [
    'lib/features/admin/presentation',
    'lib/features/authentication/presentation',
    'lib/features/home/presentation',
    'lib/features/settings/presentation',
  ],
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoadingRoute.page, initial: true),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: SettingsRoute.page),
    AutoRoute(page: AdminRoute.page),
  ];
}
