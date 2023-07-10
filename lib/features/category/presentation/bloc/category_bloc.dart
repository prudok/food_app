import 'package:bloc/bloc.dart';
import 'package:food_app/features/category/data/repository/category_repository_impl.dart';
import 'package:food_app/features/category/domain/entities/dish_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_bloc.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc(this.categoryRepositoryImpl) : super(const _Initial()) {
    on<LoadCategory>((event, emit) async {
      emit(const CategoryState.loading());
      await categoryRepositoryImpl.getDishes().then(
            (dishList) => emit(
              CategoryState.loaded(dishList: dishList),
            ),
          );
    });
  }

  final CategoryRepositoryImpl categoryRepositoryImpl;
}
