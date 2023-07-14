import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_app/config/router.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/asset_paths.dart';

@RoutePage()
class ViewNavigator extends StatelessWidget {
  const ViewNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        HomeRoute(),
        CartRoute(),
        HomeRoute(),
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
              label: 'Главная',
              icon: Image.asset(AssetPaths.home, color: AppColors.grey),
              activeIcon: Image.asset(AssetPaths.home, color: AppColors.blue),
            ),
            BottomNavigationBarItem(
              label: 'Поиск',
              icon: Image.asset(AssetPaths.searchNormal),
              activeIcon: Image.asset(
                AssetPaths.searchNormal,
                color: AppColors.blue,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Корзина',
              icon: Image.asset(AssetPaths.bag),
              activeIcon: Image.asset(AssetPaths.bag, color: AppColors.blue),
            ),
            BottomNavigationBarItem(
              label: 'Аккаунт',
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
