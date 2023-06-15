import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors/app_colors.dart';
import '../../../../core/constants/device_size/device.dart';
import '../../../../core/constants/text_styles/app_text_styles.dart';
import '../bloc/category_bloc.dart';
import '../widgets/app_bars/category_app_bar.dart';
import '../widgets/grid_views/dish_grid_view.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    final categoryBloc = context.watch<CategoryBloc>();

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CategoryAppBar(),
      body: categoryBloc.state.maybeWhen(
        loading: () => const Center(child: CircularProgressIndicator()),
        loaded: (dishList) {
          return ListView(
            children: [
              const SizedBox(height: 10),
              SizedBox(
                height: 40,
                width: Device.width,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return const Row(
                      children: [
                        CategoryButton(
                          title: 'Все меню',
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
              DishGridVIew(dishList: dishList),
            ],
          );
        },
        orElse: () => const Center(child: Text('Error')),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String title;

  const CategoryButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.backgroundLighGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {},
      child: Text(
        title,
        style: AppTextStyles.bodySmall.copyWith(
          color: AppColors.black,
        ),
      ),
    );
  }
}
