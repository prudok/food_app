import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_app/features/home/data/repository/category_item_repository_impl.dart';
import 'package:food_app/features/home/domain/entities/category_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this.categoryItemRepository) : super(const HomeState.initial()) {
    on<LoadCategories>((event, emit) async {
      emit(const HomeState.loading());
      try {
        await categoryItemRepository.getItems().then((categoryList) {
          emit(HomeState.loaded(categoryList: categoryList));
        });
      } catch (error, stackTrace) {
        emit(HomeState.loadingFailed(exception: error));
        debugPrint(error.toString());
        debugPrint(stackTrace.toString());
      }
    });
  }

  final CategoryItemRepositoryImpl categoryItemRepository;
}
