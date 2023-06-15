import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:food_app/features/cart/presentation/views/cart_view.dart';
import 'package:food_app/features/category/presentation/views/category_view.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'core/constants/device_size/device.dart';
import 'features/category/presentation/bloc/category_bloc.dart';
import 'features/home/presentation/bloc/home_bloc.dart';
import 'features/home/presentation/views/home_view.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    Device().init(context);
    initializeDateFormatting();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => HomeBloc()),
        BlocProvider(create: (BuildContext context) => CategoryBloc()),
        BlocProvider(create: (BuildContext context) => CartBloc()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CategoryView(),
      ),
    );
  }
}
