import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../shared/home_app_bar.dart';
import '../../../shared/home_bottom_nav_bar.dart';
import '../../domain/entities/user_item/user_cart_item.dart';
import '../bloc/cart_bloc.dart';

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

class CartPreviewItem extends StatelessWidget {
  final List<UserCartItem> item;

  const CartPreviewItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final cartBloc = context.watch<CartBloc>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.backgroundLighGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                width: 50,
                height: 50,
                child: Image.network(item.first.imageUrl),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${item.first.name}',
                  style: AppTextStyles.bodySmall,
                ),
                Row(
                  children: [
                    Text(
                      '${item.first.price}р',
                      style: AppTextStyles.bodySmall,
                    ),
                    const Text(' · '),
                    Text(
                      '${item.first.weight}г',
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.backgroundLighGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  cartBloc.add(
                    CartEvent.addToCart(
                      item: item.first,
                    ),
                  );
                },
                icon: const Icon(Icons.add),
              ),
              Text('${item.length}'),
              IconButton(
                onPressed: () {
                  cartBloc.add(
                    CartEvent.removeFromCart(
                      item: item.first,
                    ),
                  );
                },
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
