import 'package:baqa_atera/screens/favourite/cubit/state.dart';
import 'package:baqa_atera/models/classScreen1.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteCubit extends Cubit<FavouriteState> {
  FavoriteCubit() : super(FavouriteinitState());
  static FavoriteCubit get(context) => BlocProvider.of(context);
  bool isfav = false;
  Map<String, bool> favourites = {}; // قاموس يُخزن قوائم المفضلة
  // bool isfavourite = false;
  void changeFavourite(mornning m) {
    bool isFavourite =
        favourites.containsKey(m.body) && favourites[m.best] == true;
    isFavourite = !isFavourite;
    if (isFavourite) {
      // إضافة العنصر إلى قائمة المفضلة
      favourites[m.body!] = true;
    } else {
      // إزالة العنصر من قائمة المفضلة
      favourites.remove(m.body);
    }

    emit(IsFavChange());
  }
  // void IsFavchang() {
  //   isfav = !isfav;
  //   emit(IsFavChange());
  // }

  void addToFavorites(mornning item) {
    List<mornning> updatedFavorites = FavoriteState().favorites;
    updatedFavorites.add(item);
    emit(FavouriteAddState());
  }

  void removeFromFavorites(mornning item) {
    List<mornning> updatedFavorites = FavoriteState().favorites;
    updatedFavorites.remove(item);
    emit(FavouriteRemoveState());
  }
}
