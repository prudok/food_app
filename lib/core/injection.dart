import 'package:dio/dio.dart';
import 'package:food_app/config/router.dart';
import 'package:food_app/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:food_app/features/category/data/datasource/dish_api.dart';
import 'package:food_app/features/category/data/datasource/dish_api_impl.dart';
import 'package:food_app/features/category/data/repository/category_repository_impl.dart';
import 'package:food_app/features/category/presentation/bloc/category_bloc.dart';
import 'package:food_app/features/category/presentation/bloc/sorting_bloc/sorting_bloc.dart';
import 'package:food_app/features/home/data/datasource/home_api.dart';
import 'package:food_app/features/home/data/datasource/home_api_impl.dart';
import 'package:food_app/features/home/data/repository/category_item_repository_impl.dart';
import 'package:food_app/features/home/presentation/bloc/home_bloc.dart';

class Injection {
  final Map<Type, Object?> getIt = {};

  void put<T>(Object? object) => getIt[T] = object;

  T get<T>() => getIt[T] as T;

  void setDependencies() {
    put<Dio>(Dio());

    // APIs
    put<DishAPI>(DishAPI(get<Dio>()));
    put<HomeAPI>(HomeAPI(get<Dio>()));

    put<DishAPIImpl>(DishAPIImpl(get<DishAPI>()));
    put<HomeAPIImpl>(HomeAPIImpl(get<HomeAPI>()));

    // Repositories
    put<CategoryItemRepositoryImpl>(
      CategoryItemRepositoryImpl(get<HomeAPIImpl>()),
    );
    put<CategoryRepositoryImpl>(
      CategoryRepositoryImpl(get<DishAPIImpl>()),
    );

    // Blocs
    put<HomeBloc>(HomeBloc(get<CategoryItemRepositoryImpl>()));
    put<CategoryBloc>(CategoryBloc(get<CategoryRepositoryImpl>()));
    put<CartBloc>(CartBloc());
    put<SortingBloc>(SortingBloc());

    put<AppRouter>(AppRouter());
  }
}

final Injection getIt = Injection();
