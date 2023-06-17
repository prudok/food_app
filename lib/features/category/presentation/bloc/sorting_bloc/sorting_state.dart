part of 'sorting_bloc.dart';

@freezed
class SortingState with _$SortingState {
  const factory SortingState.initial({required DishList dishList}) = _Initial;
  const factory SortingState.withoutSorting({required DishList dishList}) = _WithoutSorting;
  const factory SortingState.saladSorting({required DishList dishList}) =
      _SaladSorting;
  const factory SortingState.riceSorting({required DishList dishList}) =
      _RiceSorting;
  const factory SortingState.fishSorting({required DishList dishList}) =
      _FishSorting;
}
