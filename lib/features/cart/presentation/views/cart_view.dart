import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../shared/home_app_bar.dart';
import '../../../shared/home_bottom_nav_bar.dart';
import '../bloc/cart_bloc.dart';
import '../widgets/cart_preview_item.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final cartBloc = context.watch<CartBloc>();

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const HomeAppBar(),
      bottomNavigationBar: const HomeBottomNavBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          cartBloc.state.maybeWhen(
            updated: (userCart) {
              if (userCart.items.isEmpty) {
                return const Center(
                  child: Text('Нет Товаров.'),
                );
              } else {
                return Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.72,
                      child: ListView.separated(
                        itemCount: userCart.items.length,
                        itemBuilder: (context, index) {
                          return CartPreviewItem(item: userCart.items[index]);
                        },
                        separatorBuilder: (BuildContext context, index) {
                          return const SizedBox(height: 10);
                        },
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child:
                            Text('Оплатить ${cartBloc.calculateTotalSum()} р'),
                      ),
                    ),
                  ],
                );
              }
            },
            orElse: () => const Center(
              child: Text('No Items found.'),
            ),
          ),
        ],
      ),
    );
  }
}

