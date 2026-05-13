import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/core/router/app_router.dart';
import 'package:pokedex/core/theme/app_theme.dart';
import 'package:pokedex/features/settings/application/theme_mode_service.dart';
import 'package:pokedex/i18n/strings.g.dart';

final appRouter = AppRouter();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.setLocaleSync(AppLocale.ca);
  runApp(
    ProviderScope(
      child: TranslationProvider(child: const PokedexApp()),
    ),
  );
}

class PokedexApp extends ConsumerWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModePreferenceProvider);
    final locale = TranslationProvider.of(context).flutterLocale;

    return MaterialApp.router(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeMode,
      locale: locale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      routerConfig: appRouter.config(),
    );
  }
}
