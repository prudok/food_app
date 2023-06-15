import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors/app_colors.dart';
import '../../../../../core/constants/asset_paths/asset_paths.dart';
import '../../../../../core/constants/device_size/device.dart';
import '../../../../../core/constants/text_styles/app_text_styles.dart';
import '../../../../shared/app_bar_avatar.dart';

class CategoryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CategoryAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Image.asset(AssetPaths.backButton),
      ),
      actions: [
        const AppBarAvatar(),
        SizedBox(width: Device.width! * 0.02),
      ],
      backgroundColor: AppColors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Азиатская кухня',
        style: AppTextStyles.bodyBig.copyWith(color: AppColors.black),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
