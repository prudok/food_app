import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors/app_colors.dart';
import '../../../../core/constants/asset_paths/asset_paths.dart';
import '../../../../core/constants/text_styles/app_text_styles.dart';
import '../../../shared/app_bars/home_app_bar.dart';
import '../bloc/cart_bloc.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final cartBloc = context.watch<CartBloc>();

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const HomeAppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          cartBloc.state.when(
            initial: (userCart) {
              return userCart.items == null
                  ? const Center(
                      child: Text('No items'),
                    )
                  : const Center(
                      child: Text('Has items'),
                    );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(AssetPaths.home),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      const Text(
                        'Some salad',
                        style: AppTextStyles.bodySmall,
                      ),
                      Row(
                        children: [
                          const Text(
                            '390р',
                            style: AppTextStyles.bodySmall,
                          ),
                          const Text(' * '),
                          Text(
                            '420g',
                            style: AppTextStyles.bodySmall
                                .copyWith(color: AppColors.grey),
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
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                    ),
                    const Text('1'),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
