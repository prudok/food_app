import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_app/core/app_text_styles.dart';
import 'package:food_app/features/category/presentation/views/category_view.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({required this.imageUrl, required this.name, super.key});

  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.pushWidget(
        const CategoryView(),
      ),
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
