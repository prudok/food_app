// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DishList _$DishListFromJson(Map<String, dynamic> json) {
  return _DishList.fromJson(json);
}

/// @nodoc
mixin _$DishList {
  List<Dish> get dishes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DishListCopyWith<DishList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishListCopyWith<$Res> {
  factory $DishListCopyWith(DishList value, $Res Function(DishList) then) =
      _$DishListCopyWithImpl<$Res, DishList>;
  @useResult
  $Res call({List<Dish> dishes});
}

/// @nodoc
class _$DishListCopyWithImpl<$Res, $Val extends DishList>
    implements $DishListCopyWith<$Res> {
  _$DishListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
  }) {
    return _then(_value.copyWith(
      dishes: null == dishes
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<Dish>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DishListCopyWith<$Res> implements $DishListCopyWith<$Res> {
  factory _$$_DishListCopyWith(
          _$_DishList value, $Res Function(_$_DishList) then) =
      __$$_DishListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Dish> dishes});
}

/// @nodoc
class __$$_DishListCopyWithImpl<$Res>
    extends _$DishListCopyWithImpl<$Res, _$_DishList>
    implements _$$_DishListCopyWith<$Res> {
  __$$_DishListCopyWithImpl(
      _$_DishList _value, $Res Function(_$_DishList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
  }) {
    return _then(_$_DishList(
      dishes: null == dishes
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<Dish>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DishList with DiagnosticableTreeMixin implements _DishList {
  _$_DishList({required this.dishes});

  factory _$_DishList.fromJson(Map<String, dynamic> json) =>
      _$$_DishListFromJson(json);

  @override
  final List<Dish> dishes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DishList(dishes: $dishes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DishList'))
      ..add(DiagnosticsProperty('dishes', dishes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DishList &&
            const DeepCollectionEquality().equals(other.dishes, dishes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dishes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DishListCopyWith<_$_DishList> get copyWith =>
      __$$_DishListCopyWithImpl<_$_DishList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DishListToJson(
      this,
    );
  }
}

abstract class _DishList implements DishList {
  factory _DishList({required final List<Dish> dishes}) = _$_DishList;

  factory _DishList.fromJson(Map<String, dynamic> json) = _$_DishList.fromJson;

  @override
  List<Dish> get dishes;
  @override
  @JsonKey(ignore: true)
  _$$_DishListCopyWith<_$_DishList> get copyWith =>
      throw _privateConstructorUsedError;
}
