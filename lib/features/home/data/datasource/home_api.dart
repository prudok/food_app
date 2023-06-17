import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/api_constants.dart';
import '../../domain/entities/category_list/category_list.dart';

part 'home_api.g.dart';

@RestApi(baseUrl: APIConstants.baseUrl)
abstract class HomeAPI {
  factory HomeAPI(Dio dio, {String baseUrl}) = _HomeAPI;

  @GET(APIConstants.categoriesPath)
  Future<CategoryList> loadCategories();
}
