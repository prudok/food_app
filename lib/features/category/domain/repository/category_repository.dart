import 'package:food_app/features/category/domain/entities/dish_list.dart';

abstract class CategoryRepository {
  Future<DishList> getDishes();
}
