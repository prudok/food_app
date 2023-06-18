import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/asset_paths.dart';
import '../../../../../core/constants/app_text_styles.dart';
import '../../../../cart/domain/entities/user_item/user_cart_item.dart';
import '../../../../cart/presentation/bloc/cart_bloc.dart';
import '../../../domain/entities/dish/dish.dart';
import '../../../domain/entities/dish_list.dart/dish_list.dart';

class DishGridVIew extends StatelessWidget {
  final DishList dishList;

  const DishGridVIew({super.key, required this.dishList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: 19,
        vertical: 16,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
        mainAxisExtent: 160,
      ),
      itemCount: dishList.dishes.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (_) {
                return DishAboutDialog(
                  dish: dishList.dishes[index],
                );
              },
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: const BoxDecoration(
                  color: AppColors.backgroundLighGrey,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: SizedBox(
                  height: 90,
                  width: 90,
                  child: Image.network(
                    dishList.dishes[index].imageUrl,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                dishList.dishes[index].name,
                style: AppTextStyles.bodySmall,
              ),
            ],
          ),
        );
      },
    );
  }
}

class DishAboutDialog extends StatefulWidget {
  final Dish dish;

  const DishAboutDialog({super.key, required this.dish});

  @override
  State<DishAboutDialog> createState() => _DishAboutDialogState();
}

class _DishAboutDialogState extends State<DishAboutDialog> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    final cartBloc = context.watch<CartBloc>();

    return AlertDialog(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Container(
                width: 300,
                height: 230,
                decoration: BoxDecoration(
                  color: AppColors.backgroundLighGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 56,
                    vertical: 14,
                  ),
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.network(
                      widget.dish.imageUrl,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Row(
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: AppColors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _isFavorited = !_isFavorited;
                          });
                        },
                        child: Image.asset(
                          AssetPaths.favorite,
                          color: _isFavorited ? AppColors.red : AppColors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Image.asset(AssetPaths.close),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            widget.dish.name,
            style: AppTextStyles.bodyBig,
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                '${widget.dish.price}р',
                style: AppTextStyles.bodySmall,
              ),
              const Text(' · '),
              Text(
                '${widget.dish.weight}г',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            widget.dish.description,
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.grey,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
                cartBloc.add(
                  CartEvent.addToCart(
                    item: UserCartItem(
                      id: widget.dish.id,
                      name: widget.dish.name,
                      price: widget.dish.price,
                      weight: widget.dish.weight,
                      imageUrl: widget.dish.imageUrl,
                    ),
                  ),
                );
              },
              child: const Text(
                'Добавить в корзину',
              ),
            ),
          )
        ],
      ),
    );
  }
}
