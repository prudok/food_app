import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_text_styles.dart';
import '../../../../../core/constants/asset_paths.dart';
import '../../../../home/presentation/views/home_view.dart';
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
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomeView()),
          );
        },
        icon: Image.asset(AssetPaths.backButton),
      ),
      actions: const [
        AppBarAvatar(),
        SizedBox(width: 15),
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
