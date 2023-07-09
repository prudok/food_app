import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_item.freezed.dart';
part 'category_item.g.dart';

@freezed
class CategoryItem with _$CategoryItem {
  const factory CategoryItem({
    required int id,
    required String name,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _CategoryItem;

  factory CategoryItem.fromJson(Map<String, Object?> json) =>
      _$CategoryItemFromJson(json);
}
