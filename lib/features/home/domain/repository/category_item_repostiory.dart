import 'package:food_app/features/home/domain/entities/category_list.dart';

abstract class CategoryItemRepository {
  Future<CategoryList> getItems();
}