import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/app_text_styles.dart';
import 'package:food_app/core/asset_paths.dart';
import 'package:food_app/features/cart/domain/entities/user_cart_item.dart';
import 'package:food_app/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:food_app/features/category/domain/entities/dish.dart';
import 'package:food_app/features/category/domain/entities/dish_list.dart';
import 'package:food_app/generated/l10n.dart';

class DishGridVIew extends StatelessWidget {
  const DishGridVIew({required this.dishList, super.key});

  final DishList dishList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: 19,
        vertical: 16,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
        mainAxisExtent: 150,
      ),
      itemCount: dishList.dishes.length,
      itemBuilder: (context, index) {
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: AppColors.backgroundLightGrey,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minHeight: 90,
                      minWidth: 90,
                    ),
                    child: Image.network(
                      dishList.dishes[index].imageUrl,
                      fit: BoxFit.scaleDown,
                    ),
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
  const DishAboutDialog({required this.dish, super.key});

  final Dish dish;

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
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Container(
                width: 300,
                height: 230,
                decoration: BoxDecoration(
                  color: AppColors.backgroundLightGrey,
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
              child: Text(
                S.of(context).addToCart,
              ),
            ),
          )
        ],
      ),
    );
  }
}
