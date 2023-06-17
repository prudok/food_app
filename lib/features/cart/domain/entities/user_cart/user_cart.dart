import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../user_item/user_cart_item.dart';

part 'user_cart.freezed.dart';
part 'user_cart.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class UserCart with _$UserCart {
  factory UserCart({
    Map<int, UserCartItem>? items,
  }) = _UserCart;

  factory UserCart.fromJson(Map<String, Object?> json) => _$UserCartFromJson(json);
}
