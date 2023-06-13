import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/features/category/presentation/bloc/category_bloc.dart';
import 'package:food_app/features/category/presentation/views/category_view.dart';

import 'core/constants/device_size/device.dart';
import 'features/home/presentation/bloc/home_bloc.dart';
import 'features/home/presentation/views/home_view.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    Device().init(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => HomeBloc(),
          ),
          BlocProvider(
            create: (BuildContext context) => CategoryBloc(),
          ),
        ],
        child: const CategoryView()
        // child: const HomeView(),
      ),
    );
  }
}
