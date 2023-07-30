import 'package:food_app/features/home/domain/entities/category_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_list.freezed.dart';
part 'category_list.g.dart';

@freezed
class CategoryList with _$CategoryList {
  const factory CategoryList({
    // IMPORTANT: first letter of JsonKey is a russian letter 'с'
    // ignore: invalid_annotation_target
    @JsonKey(name: 'сategories') required List<CategoryItem> categories,
  }) = _CategoryList;

  factory CategoryList.fromJson(Map<String, Object?> json) =>
      _$CategoryListFromJson(json);
}
