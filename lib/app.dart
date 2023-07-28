import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:food_app/config/router.dart';
import 'package:food_app/core/injection.dart';
import 'package:food_app/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:food_app/features/category/presentation/bloc/category_bloc.dart';
import 'package:food_app/features/category/presentation/bloc/sorting_bloc/sorting_bloc.dart';
import 'package:food_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:food_app/generated/l10n.dart';
import 'package:intl/date_symbol_data_local.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();
    getIt.setDependencies();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt.get<HomeBloc>()),
        BlocProvider(create: (context) => getIt.get<CategoryBloc>()),
        BlocProvider(create: (context) => getIt.get<CartBloc>()),
        BlocProvider(create: (context) => getIt.get<SortingBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        routerConfig: getIt.get<AppRouter>().config(),
      ),
    );
  }
}
