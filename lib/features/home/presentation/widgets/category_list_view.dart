import 'package:flutter/material.dart';
import 'package:food_app/features/home/domain/entities/category_list.dart';
import 'package:food_app/features/home/presentation/widgets/widgets.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({required this.categoryList, super.key});

  final CategoryList categoryList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: categoryList.categories.length,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemBuilder: (context, index) {
        return CategoryTile(
          name: categoryList.categories[index].name,
          imageUrl: categoryList.categories[index].imageUrl,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 15);
      },
    );
  }
}
