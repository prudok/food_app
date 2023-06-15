import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../../../../core/constants/app_colors/app_colors.dart';
import '../../../shared/app_bars/home_app_bar.dart';
import '../bloc/home_bloc.dart';
import '../widgets/list_views/category_list_view.dart';
import '../widgets/shimmers/shimmer_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBloc = context.watch<HomeBloc>();
    initializeDateFormatting();

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const HomeAppBar(),
      body: homeBloc.state.maybeWhen(
        loading: () => const ShimmerListView(),
        loaded: (categoryList) => CategoryListView(
          categoryList: categoryList,
        ),
        orElse: () => const Text('Error'),
      ),
    );
  }
}
