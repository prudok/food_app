import 'package:food_app/features/home/data/datasource/home_api_impl.dart';

import '../../domain/entities/category_list/category_list.dart';
import '../../domain/repository/category_item_repostiory.dart';

class CategoryItemRepositoryImpl extends CategoryItemRepository {
  final HomeAPIImpl homeAPI;
  CategoryItemRepositoryImpl(this.homeAPI);

  // TODO: refactor code below
  @override
  Future<CategoryList> getItems() async {
    return await homeAPI.loadCategories();
  }
}
