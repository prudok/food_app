import 'package:freezed_annotation/freezed_annotation.dart';

import '../category_item/category_item.dart';

part 'category_list.freezed.dart';
part 'category_list.g.dart';

@freezed
class CategoryList with _$CategoryList {
  const factory CategoryList({
    // IMPORTANT: first letter of JsonKey is a russian letter 'с' 
    @JsonKey(name: 'сategories') required List<CategoryItem> categories,
  }) = _CategoryList;

  factory CategoryList.fromJson(Map<String, Object?> json) =>
      _$CategoryListFromJson(json);
}
