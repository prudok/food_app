import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/api_constants.dart';
import '../../domain/entities/dish_list.dart/dish_list.dart';

part 'dish_api.g.dart';

@RestApi(baseUrl: APIConstants.baseUrl)
abstract class DishAPI {
  factory DishAPI(Dio dio, {String baseUrl}) = _DishAPI;

  @GET(APIConstants.dishesPath)
  Future<DishList> loadDishes();
}
