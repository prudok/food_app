import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../shared/home_app_bar.dart';
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
              if (userCart.items == null || userCart.items!.isEmpty) {
                return const Center(
                  child: Text('No items found.'),
                );
              } else {
                return Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.9,
                      child: ListView.separated(
                        itemBuilder: (context, index) {
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
                                      child: Image.network(
                                        userCart.items![index]!.imageUrl,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        userCart.items![index]!.name,
                                        style: AppTextStyles.bodySmall,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '${userCart.items![index]!.price}р',
                                            style: AppTextStyles.bodySmall,
                                          ),
                                          const Text(' * '),
                                          Text(
                                            '${userCart.items![index]!.weight}г',
                                            style: AppTextStyles.bodySmall
                                                .copyWith(
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
                          );
                        },
                        separatorBuilder: (BuildContext context, index) {
                          return const SizedBox(height: 10);
                        },
                        itemCount: userCart.items!.length,
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
                        child: const Text('Оплатить 2004'),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
