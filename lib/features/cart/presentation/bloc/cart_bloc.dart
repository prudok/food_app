import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../category/domain/entities/dish/dish.dart';
import '../../domain/entities/user_cart/user_cart.dart';
import '../../domain/entities/user_item/user_cart_item.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(_Initial(userCart: UserCart())) {
    UserCart userCart = UserCart(items: []);
    on<_AddToCart>((event, emit) {
      userCart.items?.add(event.item);
      emit(CartState.initial(userCart: userCart));
    });
  }
}
