import 'package:food_app/features/home/data/datasource/home_api.dart';
import 'package:food_app/features/home/domain/entities/category_list.dart';

class HomeAPIImpl {
  HomeAPIImpl(this.client);

  final HomeAPI client;

  Future<CategoryList> loadCategories() {
    return client.loadCategories().then((categories) => categories);
  }
}
