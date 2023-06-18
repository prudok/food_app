import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../user_item/user_cart_item.dart';

part 'user_cart.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class UserCart with _$UserCart {
  factory UserCart({
    required List<List<UserCartItem>> items,
  }) = _UserCart;
}
