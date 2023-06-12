import 'package:flutter/material.dart';

import '../../../domain/entities/category_list/category_list.dart';
import '../tiles/category_tile.dart';

class CategoryListView extends StatelessWidget {
  final CategoryList categoryList;

  const CategoryListView({super.key, required this.categoryList});

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