import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/constants/app_colors.dart';

class ShimmerContainer extends StatelessWidget {
  const ShimmerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.shimmerGrey,
      highlightColor: AppColors.shimmerWhite,
      child: Container(
        color: AppColors.shimmerGrey,
        height: 148,
        width: double.infinity
      ),
    );
  }
}