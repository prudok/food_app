part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.updating() = _Updating;
  const factory CartState.updated({required UserCart userCart}) = _Updated;
}
