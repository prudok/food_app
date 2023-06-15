// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserCart _$$_UserCartFromJson(Map<String, dynamic> json) => _$_UserCart(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => UserCartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserCartToJson(_$_UserCart instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
