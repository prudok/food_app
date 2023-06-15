import 'package:food_app/features/category/domain/entities/dish_list.dart/dish_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../user_item/user_cart_item.dart';

part 'user_cart.freezed.dart';
part 'user_cart.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class UserCart with _$UserCart {
  factory UserCart({
    List<UserCartItem> items,
  }) = _UserCart;

  factory UserCart.fromJson(Map<String, Object?> json) => _$UserCartFromJson(json);
}
