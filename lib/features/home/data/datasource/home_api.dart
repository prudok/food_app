import '../../domain/entities/category_list/category_list.dart';

abstract class HomeAPI {
  Future<CategoryList> loadCategories();
}
