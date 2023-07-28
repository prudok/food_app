import 'package:auto_route/auto_route.dart';
import 'package:food_app/features/bottom_navigation/presentation/view_navigator.dart';
import 'package:food_app/features/cart/presentation/views/cart_view.dart';
import 'package:food_app/features/home/presentation/views/home_view.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View|Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: RouteNavigator.page,
          initial: true,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: CartRoute.page),
          ],
        ),
      ];
}
