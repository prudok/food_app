import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: homeBloc.state.maybeWhen(
        initial: () {
          homeBloc.add(const LoadCategories());
          return const ShimmerListView();
        },
        loading: () => const ShimmerListView(),
        loaded: (categoryList) => CategoryListView(
          categoryList: categoryList,
        ),
        orElse: () => const Text('Error'),
      ),
    );
  }
}
