import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:food_app/features/cart/presentation/widgets/cart_preview_item.dart';
import 'package:food_app/features/notifications/presentation/bloc/notification_bloc.dart';
import 'package:food_app/features/shared/home_app_bar.dart';
import 'package:food_app/generated/l10n.dart';

@RoutePage()
class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final cartBloc = context.watch<CartBloc>();
    final notificationBloc = context.watch<NotificationBloc>();
    final Widget noItems = Center(
      child: Text(S.of(context).noItems),
    );

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const HomeAppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          cartBloc.state.maybeWhen(
            updated: (userCart) {
              if (userCart.items.isEmpty) {
                return noItems;
              } else {
                return Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: ListView.separated(
                        itemCount: userCart.items.length,
                        itemBuilder: (_, index) {
                          return CartPreviewItem(item: userCart.items[index]);
                        },
                        separatorBuilder: (_, __) {
                          return const SizedBox(height: 10);
                        },
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          notificationBloc.add(
                            const NotificationEvent.setNow(),
                          );
                          cartBloc.add(const CartEvent.emptyCart());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          S.of(context).totalSum(cartBloc.calculateTotalSum()),
                        ),
                      ),
                    ),
                  ],
                );
              }
            },
            orElse: () => noItems,
          ),
        ],
      ),
    );
  }
}
