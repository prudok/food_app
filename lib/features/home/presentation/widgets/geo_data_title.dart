import 'package:flutter/material.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/app_text_styles.dart';
import 'package:food_app/core/asset_paths.dart';

class GeoDataTitle extends StatelessWidget {
  const GeoDataTitle({required this.cityName, required this.date, super.key});

  final String cityName;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetPaths.location),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cityName,
              style: AppTextStyles.bodyBig.copyWith(
                color: AppColors.black,
              ),
            ),
            Text(
              date,
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
