import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_app/config/router.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/asset_paths.dart';
import 'package:food_app/generated/l10n.dart';

@RoutePage()
class ViewNavigator extends StatelessWidget {
  const ViewNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        HomeRoute(),
        HomeRoute(),
        CartRoute(),
        PlaygroundRoute(message: null),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          showUnselectedLabels: true,
          selectedItemColor: AppColors.blue,
          unselectedItemColor: AppColors.grey,
          items: [
            BottomNavigationBarItem(
              label: S.of(context).home,
              icon: Image.asset(AssetPaths.home, color: AppColors.grey),
              activeIcon: Image.asset(AssetPaths.home, color: AppColors.blue),
            ),
            BottomNavigationBarItem(
              label: S.of(context).find,
              icon: Image.asset(AssetPaths.searchNormal),
              activeIcon: Image.asset(
                AssetPaths.searchNormal,
                color: AppColors.blue,
              ),
            ),
            BottomNavigationBarItem(
              label: S.of(context).cart,
              icon: Image.asset(AssetPaths.bag),
              activeIcon: Image.asset(AssetPaths.bag, color: AppColors.blue),
            ),
            BottomNavigationBarItem(
              label: S.of(context).account,
              icon: Image.asset(AssetPaths.profileCircle),
              activeIcon: Image.asset(
                AssetPaths.profileCircle,
                color: AppColors.blue,
              ),
            ),
          ],
        );
      },
    );
  }
}
