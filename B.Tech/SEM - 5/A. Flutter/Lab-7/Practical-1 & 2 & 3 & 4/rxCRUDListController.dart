import 'package:practicals/Lab-7/Practical-1 & 2 & 3 & 4/rxCRUDListModel.dart';
import 'package:get/get.dart';

class RxCRUDListController extends GetxController{
  RxList users = [].obs;

  List<dynamic> getUsers(){
    return users;
  }

  RxCRUDModel getUser({required int userID}){
    return users.firstWhere((element) => element.userID==userID,);
  }

  void addUser({required RxCRUDModel user}){
    users.add(user);
  }

  void updateUser({required RxCRUDModel user, required int userID}){
    users[userID] = user;
  }

  void changeFavorite({required int userID}){
    users[userID].isFavorite.value = !users[userID].isFavorite.value;
  }

  void deleteUser({required int userID}){
    users.removeWhere((element) => element.userID == userID,);
  }

  List<dynamic> searchUser({required String name}){
    return users.where((element) => element.userName==name,).toList();
  }

  void sortUser(){
    return users.sort((a, b) => a.userID);
  }
}