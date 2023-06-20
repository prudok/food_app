import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../shared/home_bottom_nav_bar.dart';
import '../../../shared/shimmer_list_view.dart';
import '../bloc/category_bloc.dart';
import '../bloc/sorting_bloc/sorting_bloc.dart';
import '../widgets/CategoryButton.dart';
import '../widgets/app_bars/category_app_bar.dart';
import '../widgets/grid_views/dish_grid_view.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final categoryBloc = context.watch<CategoryBloc>();
    final sortingBloc = context.watch<SortingBloc>();
    final List<String> categories = [
      'Все меню',
      'С рисом',
      'Салаты',
      'С рыбой',
    ];

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CategoryAppBar(),
      bottomNavigationBar: const HomeBottomNavBar(),
      body: categoryBloc.state.when(
        initial: () {
          categoryBloc.add(const LoadCategory());
          return const SizedBox();
        },
        loading: () => const Center(child: ShimmerListView()),
        loaded: (dishList) {
          return ListView(
            children: [
              const SizedBox(height: 10),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        CategoryButton(
                          title: categories[index],
                          isPressed: sortingBloc.state.when(
                            initial: (_) => index == 0,
                            withoutSorting: (_) => index == 0,
                            riceSorting: (_) => index == 1,
                            saladSorting: (_) => index == 2,
                            fishSorting: (_) => index == 3,
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: 4,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 8);
                  },
                ),
              ),
              DishGridVIew(
                dishList: sortingBloc.state.when(
                  initial: (_) {
                    sortingBloc.add(SortingEvent.started(dishList: dishList));
                    return sortingBloc.dishList;
                  },
                  saladSorting: (dishes) => dishes,
                  riceSorting: (dishes) => dishes,
                  fishSorting: (dishes) => dishes,
                  withoutSorting: (dishes) => dishes,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

