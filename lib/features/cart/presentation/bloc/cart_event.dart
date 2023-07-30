part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started() = _Started;

  const factory CartEvent.addToCart({required UserCartItem item}) = _AddToCart;

  const factory CartEvent.removeFromCart({required UserCartItem item}) =
      _RemoveFromCart;

  const factory CartEvent.emptyCart() = _EmptyCart;
}
