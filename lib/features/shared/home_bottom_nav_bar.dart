import 'package:flutter/material.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/asset_paths.dart';
import 'package:food_app/features/cart/presentation/views/cart_view.dart';
import 'package:food_app/features/home/presentation/views/home_view.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    return BottomNavigationBar(
      showUnselectedLabels: true,
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.blue,
      unselectedItemColor: AppColors.grey,
      currentIndex: currentIndex,
      onTap: (index) {
        if (index == 2) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const CartView()),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomeView()),
          );
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(AssetPaths.home),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(AssetPaths.searchNormal),
          label: 'Поиск',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(AssetPaths.bag),
          label: 'Корзина',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(AssetPaths.profileCircle),
          label: 'Аккаунт',
        ),
      ],
    );
  }
}
