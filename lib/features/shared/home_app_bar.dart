import 'package:flutter/material.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/app_date.dart';
import 'package:food_app/features/home/presentation/widgets/geo_data_title.dart';
import 'package:food_app/features/shared/app_bar_avatar.dart';
import 'package:food_app/generated/l10n.dart';

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
        cityName: S.of(context).city,
        date: AppDate.dateNow(S.of(context).locale),
      ),
      actions: const [
        SizedBox(width: 15),
        AppBarAvatar(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
