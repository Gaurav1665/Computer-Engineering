import 'package:get/get.dart';

class RxCRUDModel{
  RxString userName, userEmail;
  RxInt userID;
  RxBool isFavorite;

  RxCRUDModel({required this.userID, required this.userName, required this.userEmail,required this.isFavorite});
}