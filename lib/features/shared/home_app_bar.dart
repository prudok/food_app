import 'package:flutter/material.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/features/home/presentation/widgets/geo_data_title.dart';
import 'package:food_app/features/shared/app_bar_avatar.dart';
import 'package:intl/intl.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.white,
      title: GeoDataTitle(
        cityName: 'Санкт-Петербург',
        date: DateFormat.yMMMMd('ru').format(DateTime.now()),
      ),
      actions: const [
        AppBarAvatar(),
        SizedBox(width: 15),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
