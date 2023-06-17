import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/datasource/home_api_impl.dart';
import '../../data/repository/category_item_repository_impl.dart';
import '../../domain/entities/category_list/category_list.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeAPIImpl homeAPIImpl = HomeAPIImpl();
  late CategoryItemRepositoryImpl categoryItemRepository;
  void initBloc() {
    categoryItemRepository = CategoryItemRepositoryImpl(homeAPIImpl);
  }

  HomeBloc() : super(const HomeState.initial()) {
    initBloc();

    on<LoadCategories>((event, emit) async {
      emit(const HomeState.loading());
      await categoryItemRepository.getItems().then((categoryList) {
        emit(HomeState.loaded(categoryList: categoryList));
      });
    });
  }
}
