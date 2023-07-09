import 'package:flutter/material.dart';
import 'package:food_app/core/constants/app_colors.dart';
import 'package:food_app/core/constants/app_text_styles.dart';
import 'package:food_app/core/constants/asset_paths.dart';
import 'package:food_app/features/home/presentation/views/home_view.dart';
import 'package:food_app/features/shared/app_bar_avatar.dart';

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
