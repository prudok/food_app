import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors/app_colors.dart';
import '../../../../../core/constants/asset_paths/asset_paths.dart';
import '../../../../../core/constants/text_styles/app_text_styles.dart';
import '../../../domain/entities/dish/dish.dart';
import '../../../domain/entities/dish_list.dart/dish_list.dart';

class DishGridVIew extends StatelessWidget {
  final DishList dishList;

  const DishGridVIew({super.key, required this.dishList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
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
          mainAxisExtent: 155,
        ),
        itemCount: dishList.dishes.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return DishAboutDialog(dish: dishList.dishes[index]);
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
      ),
    );
  }
}

class DishAboutDialog extends StatelessWidget {
  final Dish dish;

  const DishAboutDialog({super.key, required this.dish});

  @override
  Widget build(BuildContext context) {
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 56, vertical: 14),
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.network(
                      dish.imageUrl,
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
                        onPressed: () {},
                        child: Image.asset(AssetPaths.favorite),
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
            dish.name,
            style: AppTextStyles.bodyBig,
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                '${dish.price}р',
                style: AppTextStyles.bodySmall,
              ),
              const Text(' * '),
              Text(
                '${dish.weight}г',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            dish.description,
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
