import 'package:baqa_atera/models/classScreen1.dart';

abstract class FavouriteState {}

class FavouriteinitState extends FavouriteState {}

class FavouriteAddState extends FavouriteState {}

class FavouriteRemoveState extends FavouriteState {}

class IsFavChange extends FavouriteState {}

class FavoriteState extends FavouriteState {
  final List<mornning> favorites;

  FavoriteState({this.favorites = const []});

  @override
  List<Object?> get props => [favorites];

  FavoriteState copyWith({List<mornning>? favorites}) {
    return FavoriteState(favorites: favorites ?? this.favorites);
  }
}
