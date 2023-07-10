import 'package:food_app/features/category/data/datasource/dish_api_impl.dart';
import 'package:food_app/features/category/domain/entities/dish_list.dart';
import 'package:food_app/features/category/domain/repository/category_repository.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  CategoryRepositoryImpl(this.dishAPIImpl);

  final DishAPIImpl dishAPIImpl;

  @override
  Future<DishList> getDishes() {
    return dishAPIImpl.loadDishes();
  }
}
