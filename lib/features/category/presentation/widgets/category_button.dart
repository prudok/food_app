import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/app_text_styles.dart';
import 'package:food_app/features/category/presentation/bloc/sorting_bloc/sorting_bloc.dart';
import 'package:food_app/generated/l10n.dart';

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
        if (title == S.of(context).all) {
          sortingBloc.add(const SortingEvent.all());
        } else if (title == S.of(context).salad) {
          sortingBloc.add(const SortingEvent.sortBySalad());
        } else if (title == S.of(context).rice) {
          sortingBloc.add(const SortingEvent.sortByRice());
        } else if (title == S.of(context).fish) {
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
