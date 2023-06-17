part of 'sorting_bloc.dart';

@freezed
class SortingEvent with _$SortingEvent {
  const factory SortingEvent.started({required DishList dishList}) = Started;
  const factory SortingEvent.sortBySalad() = SortBySalad;
  const factory SortingEvent.all() = All;
  const factory SortingEvent.sortByRice() = SortByRice;
  const factory SortingEvent.sortByFish() = SortByFish;
}
