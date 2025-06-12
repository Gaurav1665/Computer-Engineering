import 'package:gaurav/Lab-3/Practical-1/CRUDListModel.dart';
import 'package:get/get.dart';

class CRUDListController extends GetxController{
  RxList users = [].obs;

  List<dynamic> getUsers(){
    return users;
  }

  CRUDModel getUser({required int userID}){
    return users.firstWhere((element) => element.userID==userID,);
  }

  void addUser({required CRUDModel user}){
    users.add(user);
  }

  void updateUser({required CRUDModel user, required int userID}){
    users[userID] = user;
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