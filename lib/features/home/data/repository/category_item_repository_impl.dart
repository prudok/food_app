import 'package:food_app/features/home/data/datasource/home_api_impl.dart';
import 'package:food_app/features/home/domain/entities/category_list.dart';
import 'package:food_app/features/home/domain/repository/category_item_repostiory.dart';

class CategoryItemRepositoryImpl extends CategoryItemRepository {
  CategoryItemRepositoryImpl(this.homeAPI);

  final HomeAPIImpl homeAPI;

  @override
  Future<CategoryList> getItems() {
    return homeAPI.loadCategories();
  }
}
