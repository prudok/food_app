import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/datasource/home_api_impl.dart';
import '../../data/repository/category_item_repository_impl.dart';
import '../../domain/entities/category_list/category_list.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    final homeAPI = HomeAPIImpl();
    final categoryItemRepository = CategoryItemRepositoryImpl(homeAPI);

    emit(const HomeState.loading());
    categoryItemRepository.getItems().then((categoryList) {
      emit(HomeState.loaded(categoryList: categoryList));
    });

    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
