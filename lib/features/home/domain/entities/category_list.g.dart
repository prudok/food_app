// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryList _$$_CategoryListFromJson(Map<String, dynamic> json) =>
    _$_CategoryList(
      categories: (json['сategories'] as List<dynamic>)
          .map((e) => CategoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryListToJson(_$_CategoryList instance) =>
    <String, dynamic>{
      'сategories': instance.categories,
    };
