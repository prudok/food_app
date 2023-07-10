import 'package:dio/dio.dart';
import 'package:food_app/core/api_constants.dart';
import 'package:food_app/features/category/domain/entities/dish_list.dart';
import 'package:retrofit/retrofit.dart';

part 'dish_api.g.dart';

@RestApi(baseUrl: APIConstants.baseUrl)
abstract class DishAPI {
  factory DishAPI(Dio dio, {String baseUrl}) = _DishAPI;

  @GET(APIConstants.dishesPath)
  Future<DishList> loadDishes();
}
