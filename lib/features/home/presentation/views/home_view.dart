import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/constants/asset_paths.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../shared/home_app_bar.dart';
import '../bloc/home_bloc.dart';
import '../widgets/list_views/category_list_view.dart';
import '../widgets/shimmers/shimmer_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBloc = context.watch<HomeBloc>();

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const HomeAppBar(),
      bottomNavigationBar: const HomeBottomNavBar(),
      body: homeBloc.state.when(
        initial: () {
          homeBloc.add(const LoadCategories());
          return const ShimmerListView();
        },
        loading: () => const ShimmerListView(),
        loaded: (categoryList) => CategoryListView(
          categoryList: categoryList,
        ),
      ),
    );
  }
}

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      selectedItemColor: AppColors.blue,
      unselectedItemColor: AppColors.grey,
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
