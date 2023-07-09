import 'package:flutter/foundation.dart';
import 'package:food_app/features/cart/domain/entities/user_cart_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_cart.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class UserCart with _$UserCart {
  factory UserCart({
    required List<List<UserCartItem>> items,
  }) = _UserCart;
}
