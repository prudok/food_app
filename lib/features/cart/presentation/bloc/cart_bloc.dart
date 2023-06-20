import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_cart/user_cart.dart';
import '../../domain/entities/user_item/user_cart_item.dart';

part 'cart_bloc.freezed.dart';

part 'cart_event.dart';

part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  UserCart userCart = UserCart(items: []);

  int calculateTotalSum() {
    int sum = 0;

    for (int ind = 0; ind < userCart.items.length; ++ind) {
        sum += userCart.items[ind][0].price * userCart.items[ind].length;
    }

    return sum;
  }

  CartBloc() : super(const _Initial()) {
    on<_AddToCart>((event, emit) {
      emit(const _Updating());
      for (int ind = 0; ind < userCart.items.length; ++ind) {
        if (userCart.items[ind][0] == event.item) {
          userCart.items[ind].add(event.item);
          emit(_Updated(userCart: userCart));
          return;
        }
      }
      userCart.items.add([event.item]);
      emit(_Updated(userCart: userCart));
    });

    on<_RemoveFromCart>((event, emit) {
      emit(const _Updating());
      for (int ind = 0; ind < userCart.items.length; ++ind) {
        if (userCart.items[ind][0] == event.item) {
          userCart.items[ind].remove(event.item);
          userCart.items.removeWhere((element) => element.isEmpty);
          emit(_Updated(userCart: userCart));
          return;
        }
      }
      userCart.items.remove([event.item]);
      userCart.items.removeWhere((element) => element.isEmpty);
      emit(_Updated(userCart: userCart));
    });
  }
}
