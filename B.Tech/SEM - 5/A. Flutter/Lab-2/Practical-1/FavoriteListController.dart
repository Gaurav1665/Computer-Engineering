import 'package:practicals/Lab-2/Practical-1/FavoriteListModel.dart';

class FavoriteListController{

  void changeFavorite(int index){
    FavoriteListModel.items[index]["isFavorite"] = !FavoriteListModel.items[index]["isFavorite"];
  }

  bool getFavoriteValue(int index){
    return FavoriteListModel.items[index]["isFavorite"];
  }

}