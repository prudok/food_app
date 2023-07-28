import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/app_text_styles.dart';
import 'package:food_app/features/cart/domain/entities/user_cart_item.dart';
import 'package:food_app/features/cart/presentation/bloc/cart_bloc.dart';

class CartPreviewItem extends StatelessWidget {
  const CartPreviewItem({required this.item, super.key});

  final List<UserCartItem> item;

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
                color: AppColors.backgroundLightGrey,
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
                  item.first.name,
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
        DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.backgroundLightGrey,
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
