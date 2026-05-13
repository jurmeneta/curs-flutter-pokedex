// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AdminScreen]
class AdminRoute extends PageRouteInfo<void> {
  const AdminRoute({List<PageRouteInfo>? children})
    : super(AdminRoute.name, initialChildren: children);

  static const String name = 'AdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AdminScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [LoadingScreen]
class LoadingRoute extends PageRouteInfo<LoadingRouteArgs> {
  LoadingRoute({
    Key? key,
    Duration minimumDisplayDuration = Duration.zero,
    Future<void>? readiness,
    List<PageRouteInfo>? children,
  }) : super(
         LoadingRoute.name,
         args: LoadingRouteArgs(
           key: key,
           minimumDisplayDuration: minimumDisplayDuration,
           readiness: readiness,
         ),
         initialChildren: children,
       );

  static const String name = 'LoadingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoadingRouteArgs>(
        orElse: () => const LoadingRouteArgs(),
      );
      return LoadingScreen(
        key: args.key,
        minimumDisplayDuration: args.minimumDisplayDuration,
        readiness: args.readiness,
      );
    },
  );
}

class LoadingRouteArgs {
  const LoadingRouteArgs({
    this.key,
    this.minimumDisplayDuration = Duration.zero,
    this.readiness,
  });

  final Key? key;

  final Duration minimumDisplayDuration;

  final Future<void>? readiness;

  @override
  String toString() {
    return 'LoadingRouteArgs{key: $key, minimumDisplayDuration: $minimumDisplayDuration, readiness: $readiness}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LoadingRouteArgs) return false;
    return key == other.key &&
        minimumDisplayDuration == other.minimumDisplayDuration &&
        readiness == other.readiness;
  }

  @override
  int get hashCode =>
      key.hashCode ^ minimumDisplayDuration.hashCode ^ readiness.hashCode;
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsScreen();
    },
  );
}
