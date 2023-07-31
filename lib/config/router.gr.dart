// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    RouteNavigator.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ViewNavigator(),
      );
    },
    CartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartView(),
      );
    },
    PlaygroundRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PlaygroundView(),
      );
    },
  };
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ViewNavigator]
class RouteNavigator extends PageRouteInfo<void> {
  const RouteNavigator({List<PageRouteInfo>? children})
      : super(
          RouteNavigator.name,
          initialChildren: children,
        );

  static const String name = 'RouteNavigator';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CartView]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PlaygroundView]
class PlaygroundRoute extends PageRouteInfo<void> {
  const PlaygroundRoute({List<PageRouteInfo>? children})
      : super(
          PlaygroundRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlaygroundRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
