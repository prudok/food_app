import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_cart/user_cart.dart';
import '../../domain/entities/user_item/user_cart_item.dart';

part 'cart_bloc.freezed.dart';

part 'cart_event.dart';

part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(_Initial(userCart: UserCart())) {
    UserCart userCart = UserCart(items: []);
    // TODO: implement adding new items to user cart
    on<_AddToCart>((event, emit) {
      if (userCart.items!.isEmpty) {
        userCart.items!.add([event.item]);
      } else {
        for (int ind = 0; ind < userCart.items!.length; ++ind) {
          if (userCart.items![ind][0] == event.item) {
            userCart.items![ind].add(event.item);
            emit(CartState.initial(userCart: userCart));
            return;
          }
        }

        userCart.items!.add([event.item]);
        emit(CartState.initial(userCart: userCart));
      }
    });
  }
}
