import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_cart_item.freezed.dart';
part 'user_cart_item.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class UserCartItem with _$UserCartItem {
  factory UserCartItem({
    required int id,
    required String name,
    required int price,
    required int weight,
  }) = _UserCartItem;

  factory UserCartItem.fromJson(Map<String, Object?> json) => _$UserCartItemFromJson(json);
}
