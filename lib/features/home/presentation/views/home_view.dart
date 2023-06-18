import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../shared/home_app_bar.dart';
import '../../../shared/home_bottom_nav_bar.dart';
import '../../../shared/shimmer_list_view.dart';
import '../bloc/home_bloc.dart';
import '../widgets/list_views/category_list_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final homeBloc = context.watch<HomeBloc>();

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const HomeAppBar(),
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
      bottomNavigationBar: const HomeBottomNavBar(),
    );
  }
}
