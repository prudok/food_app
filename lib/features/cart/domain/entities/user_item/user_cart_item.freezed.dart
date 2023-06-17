// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCartItem _$UserCartItemFromJson(Map<String, dynamic> json) {
  return _UserCartItem.fromJson(json);
}

/// @nodoc
mixin _$UserCartItem {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCartItemCopyWith<UserCartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCartItemCopyWith<$Res> {
  factory $UserCartItemCopyWith(
          UserCartItem value, $Res Function(UserCartItem) then) =
      _$UserCartItemCopyWithImpl<$Res, UserCartItem>;
  @useResult
  $Res call({int id, String name, int price, int weight, String imageUrl});
}

/// @nodoc
class _$UserCartItemCopyWithImpl<$Res, $Val extends UserCartItem>
    implements $UserCartItemCopyWith<$Res> {
  _$UserCartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? weight = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCartItemCopyWith<$Res>
    implements $UserCartItemCopyWith<$Res> {
  factory _$$_UserCartItemCopyWith(
          _$_UserCartItem value, $Res Function(_$_UserCartItem) then) =
      __$$_UserCartItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int price, int weight, String imageUrl});
}

/// @nodoc
class __$$_UserCartItemCopyWithImpl<$Res>
    extends _$UserCartItemCopyWithImpl<$Res, _$_UserCartItem>
    implements _$$_UserCartItemCopyWith<$Res> {
  __$$_UserCartItemCopyWithImpl(
      _$_UserCartItem _value, $Res Function(_$_UserCartItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? weight = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_UserCartItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCartItem with DiagnosticableTreeMixin implements _UserCartItem {
  _$_UserCartItem(
      {required this.id,
      required this.name,
      required this.price,
      required this.weight,
      required this.imageUrl});

  factory _$_UserCartItem.fromJson(Map<String, dynamic> json) =>
      _$$_UserCartItemFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int price;
  @override
  final int weight;
  @override
  final String imageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserCartItem(id: $id, name: $name, price: $price, weight: $weight, imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserCartItem'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('weight', weight))
      ..add(DiagnosticsProperty('imageUrl', imageUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCartItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, price, weight, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCartItemCopyWith<_$_UserCartItem> get copyWith =>
      __$$_UserCartItemCopyWithImpl<_$_UserCartItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCartItemToJson(
      this,
    );
  }
}

abstract class _UserCartItem implements UserCartItem {
  factory _UserCartItem(
      {required final int id,
      required final String name,
      required final int price,
      required final int weight,
      required final String imageUrl}) = _$_UserCartItem;

  factory _UserCartItem.fromJson(Map<String, dynamic> json) =
      _$_UserCartItem.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get price;
  @override
  int get weight;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_UserCartItemCopyWith<_$_UserCartItem> get copyWith =>
      throw _privateConstructorUsedError;
}
