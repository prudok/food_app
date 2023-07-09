import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/constants/app_colors.dart';
import 'package:food_app/core/constants/app_text_styles.dart';
import 'package:food_app/features/category/presentation/bloc/sorting_bloc/sorting_bloc.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    required this.title,
    required this.isPressed,
    super.key,
  });

  final String title;
  final bool isPressed;

  @override
  Widget build(BuildContext context) {
    final sortingBloc = context.watch<SortingBloc>();

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor:
            isPressed ? AppColors.blue : AppColors.backgroundLightGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        switch (title) {
          case 'Все меню':
            sortingBloc.add(const SortingEvent.all());
          case 'Салаты':
            sortingBloc.add(const SortingEvent.sortBySalad());
          case 'С рисом':
            sortingBloc.add(const SortingEvent.sortByRice());
          case 'С рыбой':
            sortingBloc.add(const SortingEvent.sortByFish());
        }
      },
      child: Text(
        title,
        style: AppTextStyles.bodySmall.copyWith(
          color: isPressed ? AppColors.white : AppColors.black,
        ),
      ),
    );
  }
}
