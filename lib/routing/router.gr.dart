// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:level_up/core_app_screen.dart' as _i1;
import 'package:level_up/features/home/screens/home_screen.dart' as _i2;
import 'package:level_up/features/search/screens/search_screen.dart' as _i4;
import 'package:level_up/routing/tabs/home_tab.dart' as _i3;
import 'package:level_up/routing/tabs/search_tab.dart' as _i5;

/// generated route for
/// [_i1.CoreAppScreen]
class CoreAppRoute extends _i6.PageRouteInfo<void> {
  const CoreAppRoute({List<_i6.PageRouteInfo>? children})
      : super(
          CoreAppRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoreAppRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.CoreAppScreen();
    },
  );
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeTabScreen]
class HomeTabRoute extends _i6.PageRouteInfo<void> {
  const HomeTabRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeTabRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeTabScreen();
    },
  );
}

/// generated route for
/// [_i4.SearchScreen]
class SearchRoute extends _i6.PageRouteInfo<void> {
  const SearchRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.SearchScreen();
    },
  );
}

/// generated route for
/// [_i5.SearchTabScreen]
class SearchTabRoute extends _i6.PageRouteInfo<void> {
  const SearchTabRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SearchTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchTabRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SearchTabScreen();
    },
  );
}
