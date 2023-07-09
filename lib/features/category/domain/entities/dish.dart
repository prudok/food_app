import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish.freezed.dart';
part 'dish.g.dart';

@freezed
class Dish with _$Dish {
  const factory Dish({
    required int id,
    required String name,
    required int price,
    required int weight,
    required String description,
    required List<String> tegs,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _Dish;

  factory Dish.fromJson(Map<String, Object?> json) => _$DishFromJson(json);
}
