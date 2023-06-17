// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserCartItem _$$_UserCartItemFromJson(Map<String, dynamic> json) =>
    _$_UserCartItem(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      weight: json['weight'] as int,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$_UserCartItemToJson(_$_UserCartItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'weight': instance.weight,
      'imageUrl': instance.imageUrl,
    };
