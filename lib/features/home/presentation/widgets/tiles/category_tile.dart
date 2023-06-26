import 'package:flutter/material.dart';

import '../../../../../core/constants/app_text_styles.dart';
import '../../../../category/presentation/views/category_view.dart';

class CategoryTile extends StatelessWidget {
  final String imageUrl;
  final String name;

  const CategoryTile({super.key, required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const CategoryView(),
          ),
        );
      },
      child: Container(
        height: 150,
        width: double.infinity,
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
      ),
    );
  }
}
