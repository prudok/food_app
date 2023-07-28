import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:food_app/features/home/presentation/widgets/category_list_view.dart';
import 'package:food_app/features/shared/home_app_bar.dart';
import 'package:food_app/features/shared/shimmer_list_view.dart';
import 'package:food_app/generated/l10n.dart';

@RoutePage()
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
        loadingFailed: (_) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline),
              Text(S.of(context).gettingDataError),
            ],
          ),
        ),
      ),
    );
  }
}
