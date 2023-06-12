import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/app_colors/app_colors.dart';
import '../../../../core/constants/device_size/device.dart';
import '../bloc/home_bloc.dart';
import '../widgets/list_views/category_list_view.dart';
import '../widgets/shimmers/shimmer_list_view.dart';
import '../widgets/titles/geo_data_title.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBloc = context.watch<HomeBloc>();
    initializeDateFormatting();

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        title: GeoDataTitle(
          cityName: 'Санкт-Петербург',
          date: DateFormat.yMMMMd('ru').format(DateTime.now()),
        ),
        actions: [
          const AppBarAvatar(),
          SizedBox(width: Device.width! * 0.02),
        ],
      ),
      body: homeBloc.state.maybeWhen(
        loading: () => const ShimmerListView(),
        loaded: (categoryList) {
          return CategoryListView(categoryList: categoryList,);
        },
        orElse: () => const Text('Error'),
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
