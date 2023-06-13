import 'package:dio/dio.dart';

import '../../domain/entities/dish_list.dart/dish_list.dart';
import 'dish_api.dart';

class DishAPIImpl {
  final client = DishAPI(Dio());

  Future<DishList> loadDishes() async {
    return await client.loadDishes().then((dish) => dish);
  }
}
