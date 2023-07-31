// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DishList _$$_DishListFromJson(Map<String, dynamic> json) => _$_DishList(
      dishes: (json['dishes'] as List<dynamic>)
          .map((e) => Dish.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DishListToJson(_$_DishList instance) =>
    <String, dynamic>{
      'dishes': instance.dishes,
    };
