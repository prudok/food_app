import 'package:dio/dio.dart';
import 'package:food_app/features/category/data/datasource/dish_api.dart';
import 'package:food_app/features/category/domain/entities/dish_list.dart';

class DishAPIImpl {
  final client = DishAPI(Dio());

  Future<DishList> loadDishes() {
    return client.loadDishes().then((dish) => dish);
  }
}
