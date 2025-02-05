import 'package:alpah/model/favaritomodel.dart';

import 'package:riverpod/riverpod.dart';

class FavoriteListNotfire extends StateNotifier<List<FavoritePlace>>{
  FavoriteListNotfire(): super([]);//初期化

  void addPlace(FavoritePlace place){
    state = [...state,place];
  }

  void removePlace(String id){
    state = state.where((place) => place.id != id).toList();
  }
}


final favoritelistProvide = 
StateNotifierProvider<FavoriteListNotfire,List<FavoritePlace>>(
  (ref) => FavoriteListNotfire(),);