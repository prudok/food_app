import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
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
import 'package:food_app/features/notifications/data/datasource/firebase_api_impl.dart';
import 'package:food_app/features/notifications/data/repository/notification_repository_impl.dart';
import 'package:food_app/features/notifications/presentation/bloc/notification_bloc.dart';

class Injection {
  final Map<Type, Object?> getIt = {};

  void put<T>(Object? object) => getIt[T] = object;

  T get<T>() => getIt[T] as T;

  void setDependencies() {
    put<Dio>(Dio());

    // Firebase dependencies
    put<FirebaseMessaging>(FirebaseMessaging.instance);

    // APIs
    put<DishAPI>(DishAPI(get<Dio>()));
    put<HomeAPI>(HomeAPI(get<Dio>()));

    put<DishAPIImpl>(DishAPIImpl(get<DishAPI>()));
    put<HomeAPIImpl>(HomeAPIImpl(get<HomeAPI>()));
    put<FirebaseAPIImpl>(FirebaseAPIImpl(get<FirebaseMessaging>()));

    // Repositories
    put<CategoryRepositoryImpl>(CategoryRepositoryImpl(get<DishAPIImpl>()));
    put<CategoryItemRepositoryImpl>(
      CategoryItemRepositoryImpl(get<HomeAPIImpl>()),
    );
    put<NotificationRepositoryImpl>(
      NotificationRepositoryImpl(get<FirebaseAPIImpl>()),
    );

    // Blocs
    put<CartBloc>(CartBloc());
    put<SortingBloc>(SortingBloc());
    put<HomeBloc>(HomeBloc(get<CategoryItemRepositoryImpl>()));
    put<CategoryBloc>(CategoryBloc(get<CategoryRepositoryImpl>()));
    put<NotificationBloc>(NotificationBloc(get<NotificationRepositoryImpl>()));

    put<AppRouter>(AppRouter());
  }
}

final Injection getIt = Injection();
