import 'package:food_app/features/category/data/datasource/dish_api.dart';
import 'package:food_app/features/category/domain/entities/dish_list.dart';

class DishAPIImpl {
  DishAPIImpl(this.client);

  final DishAPI client;

  Future<DishList> loadDishes() {
    return client.loadDishes().then((dish) => dish);
  }
}
