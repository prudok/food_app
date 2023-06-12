import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/constants/api/api_constants.dart';
import '../../domain/entities/category_list/category_list.dart';
import 'home_api.dart';

class HomeAPIImpl extends HomeAPI {
  final uri = Uri.https(APIConstants.baseUrl, APIConstants.categoriesPath);

  @override
  Future<CategoryList> loadCategories() {
    var response = http.get(uri);
    return response.then(
      (categories) => CategoryList.fromJson(
        jsonDecode(categories.body),
      ),
    );
  }
}
