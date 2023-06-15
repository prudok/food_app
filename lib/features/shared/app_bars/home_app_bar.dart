import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/constants/app_colors/app_colors.dart';
import '../../../core/constants/device_size/device.dart';
import '../../home/presentation/widgets/titles/geo_data_title.dart';
import '../app_bar_avatar.dart';

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
      actions: [
        const AppBarAvatar(),
        SizedBox(width: Device.width! * 0.02),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}