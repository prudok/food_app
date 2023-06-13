import 'package:bloc/bloc.dart';
import 'package:food_app/features/category/data/datasource/dish_api_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/dish_list.dart/dish_list.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(const _Initial()) {
    final dishAPIImpl = DishAPIImpl();

    emit(CategoryState.loading());

    dishAPIImpl.loadDishes().then((dishList) => emit(
          CategoryState.loaded(dishList: dishList),
        ));

    on<CategoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
