import 'package:bloc/bloc.dart';
import 'package:food_app/features/category/domain/entities/dish_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sorting_bloc.freezed.dart';
part 'sorting_event.dart';
part 'sorting_state.dart';

class SortingBloc extends Bloc<SortingEvent, SortingState> {
  SortingBloc() : super(_Initial(dishList: DishList(dishes: []))) {
    on<Started>((event, emit) {
      dishList.dishes.clear();
      dishList.dishes.addAll(event.dishList.dishes);
      emit(SortingState.withoutSorting(dishList: event.dishList));
    });

    on<All>((event, emit) {
      emit(SortingState.withoutSorting(dishList: dishList));
    });

    on<SortByFish>((event, emit) {
      emit(
        SortingState.fishSorting(
          dishList: DishList(
            dishes: dishList.dishes
                .where((dish) => dish.tegs.contains('С рыбой'))
                .toList(),
          ),
        ),
      );
    });

    on<SortByRice>((event, emit) {
      emit(
        SortingState.riceSorting(
          dishList: DishList(
            dishes: dishList.dishes
                .where((dish) => dish.tegs.contains('С рисом'))
                .toList(),
          ),
        ),
      );
    });

    on<SortBySalad>((event, emit) {
      emit(
        SortingState.saladSorting(
          dishList: DishList(
            dishes: dishList.dishes
                .where((dish) => dish.tegs.contains('Салаты'))
                .toList(),
          ),
        ),
      );
    });
  }

  DishList dishList = DishList(dishes: []);
}
