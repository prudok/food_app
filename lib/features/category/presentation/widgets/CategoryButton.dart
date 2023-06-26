import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../bloc/sorting_bloc/sorting_bloc.dart';

class CategoryButton extends StatelessWidget {
  final String title;
  final bool isPressed;

  const CategoryButton(
      {super.key, required this.title, required this.isPressed});

  @override
  Widget build(BuildContext context) {
    final sortingBloc = context.watch<SortingBloc>();

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor:
        isPressed ? AppColors.blue : AppColors.backgroundLighGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        switch (title) {
          case 'Все меню':
            sortingBloc.add(const SortingEvent.all());
            break;
          case 'Салаты':
            sortingBloc.add(const SortingEvent.sortBySalad());
            break;
          case 'С рисом':
            sortingBloc.add(const SortingEvent.sortByRice());
            break;
          case 'С рыбой':
            sortingBloc.add(const SortingEvent.sortByFish());
            break;
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
