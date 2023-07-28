import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/app_text_styles.dart';
import 'package:food_app/core/asset_paths.dart';
import 'package:food_app/features/shared/app_bar_avatar.dart';
import 'package:food_app/generated/l10n.dart';

class CategoryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CategoryAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => context.router.pop(),
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
        S.of(context).AsianFood,
        style: AppTextStyles.bodyBig.copyWith(color: AppColors.black),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
