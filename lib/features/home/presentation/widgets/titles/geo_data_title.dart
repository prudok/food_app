import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors/app_colors.dart';
import '../../../../../core/constants/asset_paths/asset_paths.dart';
import '../../../../../core/constants/device_size/device.dart';
import '../../../../../core/constants/text_styles/app_text_styles.dart';

class GeoDataTitle extends StatelessWidget {
  final String cityName;
  final String date;

  const GeoDataTitle({super.key, required this.cityName, required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetPaths.location),
        SizedBox(width: Device.width! * 0.03),
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
