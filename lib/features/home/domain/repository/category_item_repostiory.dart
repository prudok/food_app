import '../entities/category_list/category_list.dart';

abstract class CategoryItemRepository {
  Future<CategoryList> getItems();
}