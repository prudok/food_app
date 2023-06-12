import 'package:flutter/material.dart';

import '../../../../../core/constants/device_size/device.dart';
import '../../../../../core/constants/text_styles/app_text_styles.dart';

class CategoryTile extends StatelessWidget {
  final String imageUrl;
  final String name;

  const CategoryTile({super.key, required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      width: Device.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            imageUrl,
          ),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 12),
        child: Text(
          name,
          style: AppTextStyles.titleSmall,
        ),
      ),
    );
  }
}