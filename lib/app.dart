import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'features/cart/presentation/bloc/cart_bloc.dart';
import 'features/category/presentation/bloc/category_bloc.dart';
import 'features/category/presentation/bloc/sorting_bloc/sorting_bloc.dart';
import 'features/category/presentation/views/category_view.dart';
import 'features/home/presentation/bloc/home_bloc.dart';
import 'features/home/presentation/views/home_view.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();

   return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeBloc()),
        BlocProvider(create: (context) => CategoryBloc()),
        BlocProvider(create: (context) => CartBloc()),
        BlocProvider(create: (context) => SortingBloc()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CategoryView(),
      ),
    );
  }
}
