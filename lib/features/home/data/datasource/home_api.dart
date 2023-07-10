import 'package:dio/dio.dart';
import 'package:food_app/core/api_constants.dart';
import 'package:food_app/features/home/domain/entities/category_list.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api.g.dart';

@RestApi(baseUrl: APIConstants.baseUrl)
abstract class HomeAPI {
  factory HomeAPI(Dio dio, {String baseUrl}) = _HomeAPI;

  @GET(APIConstants.categoriesPath)
  Future<CategoryList> loadCategories();
}
