// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserCart _$$_UserCartFromJson(Map<String, dynamic> json) => _$_UserCart(
      items: (json['items'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            int.parse(k), UserCartItem.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_UserCartToJson(_$_UserCart instance) =>
    <String, dynamic>{
      'items': instance.items?.map((k, e) => MapEntry(k.toString(), e)),
    };
