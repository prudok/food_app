import '../entities/dish_list.dart/dish_list.dart';

abstract class CategoryRepository {
  Future<DishList> getDishes();
}
