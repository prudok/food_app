import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors/app_colors.dart';
import '../../../../core/constants/asset_paths/asset_paths.dart';
import '../../../../core/constants/device_size/device.dart';
import '../../../../core/constants/text_styles/app_text_styles.dart';
import '../bloc/category_bloc.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryBloc = context.watch<CategoryBloc>();

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Image.asset(AssetPaths.backButton),
        ),
        actions: const [AppBarAvatar()],
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Азиатская кухня',
          style: AppTextStyles.bodyBig.copyWith(color: AppColors.black),
        ),
      ),
      body: categoryBloc.state.maybeWhen(
        loading: () => const Center(child: CircularProgressIndicator()),
        loaded: (dishList) {
          return ListView(
            children: [
              const CategoryRow(),
              // DishItem
              GridView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 19,
                  vertical: 16,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 29,
                  crossAxisSpacing: 8,
                ),
                itemCount: dishList.dishes.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Container(
                          height: 109,
                          width: 109,
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: AppColors.backgroundLighGrey,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Image.network(
                            dishList.dishes[index].imageUrl,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                      Text(
                        dishList.dishes[index].name,
                        style: AppTextStyles.bodySmall,
                      ),
                    ],
                  );
                },
              ),
            ],
          );
        },
        orElse: () => const Text('Error'),
      ),
    );
  }
}

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: Device.width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const CategoryButton(title: 'Все меню');
        },
        itemCount: 6,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 8);
        },
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String title;

  const CategoryButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.backgroundLighGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 12,
        ),
        child: Text(
          title,
          style: AppTextStyles.bodySmall.copyWith(
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}

class AppBarAvatar extends StatelessWidget {
  const AppBarAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.network(
          'https://s3-alpha-sig.figma.com/img/738e/6e77/a92971e6075b85d18be0de93205d90cb?Expires=1687737600&Signature=CviOR2T3fFb157NIU9razzN2LfobSUjCGyZ76AI506SnPxZn8ec2WgO7251cjwYSENykkTl7Y-K~V7jEMXnh3r072fBmyJUj7ptB2vyHkOTg3HKAMS0GhSorPbmVem7~0jPn4kKk5Mrcgapkf-GaUVZTvmMc5~pBZCfjRkysIkLPOxj8f2ArUqkRW1eCBNsbxEqoJfvnQMOhcsnMZsURMznUrYKRETyVxdbL0lo2YEv7ZWuIUfSu8LEFDpx2t60IIijSwV9bQ9NU2DDjTWncVNyHr5HmElMiejKwCXexvaSCYQJXdCkBectc0JW0-aaFjfgqbcPrbvgZ53Q~K8QzBg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
