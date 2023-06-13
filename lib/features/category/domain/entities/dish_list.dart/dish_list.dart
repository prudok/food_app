import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../dish/dish.dart';

part 'dish_list.freezed.dart';
part 'dish_list.g.dart';

@freezed
class DishList with _$DishList {
  const factory DishList({
    required List<Dish> dishes,
  }) = _DishList;

  factory DishList.fromJson(Map<String, Object?> json) => _$DishListFromJson(json);
}
