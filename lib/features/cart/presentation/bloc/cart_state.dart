part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial({required UserCart userCart}) = _Initial;
}
