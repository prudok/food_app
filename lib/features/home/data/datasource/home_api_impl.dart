import 'package:dio/dio.dart';

import '../../domain/entities/category_list.dart';
import 'home_api.dart';

class HomeAPIImpl {
  final client = HomeAPI(Dio());

  Future<CategoryList> loadCategories() {
    return client.loadCategories().then((categories) => categories);
  }
}
