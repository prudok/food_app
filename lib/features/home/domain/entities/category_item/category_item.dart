import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'category_item.freezed.dart';
part 'category_item.g.dart';

@freezed
class CategoryItem with _$CategoryItem {
  const factory CategoryItem({
    required int id,
    required String name,
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _CategoryItem;

  factory CategoryItem.fromJson(Map<String, Object?> json) =>
      _$CategoryItemFromJson(json);
}
