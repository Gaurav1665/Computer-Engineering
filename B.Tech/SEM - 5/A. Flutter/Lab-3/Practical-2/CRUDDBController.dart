import 'package:practicals/Lab-3/Practical-2/CRUDDBModel.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

class CRUDDBController extends GetxController {

  Future<Database> initDatabase() async {
    String path = 'asset/user.db';
    return await openDatabase(path, onCreate: (db, version) async {
      await db.execute('''
        CREATE TABLE Users (
          UID INTEGER PRIMARY KEY AUTOINCREMENT,
          Name TEXT NOT NULL,
          City TEXT NOT NULL,
          Gender TEXT NOT NULL,
        );''');
    }, version: 1);
  }

  Future<List<CRUDDBModel>> fetchUser () async {
    Database db = await initDatabase();
    List<Map<String, dynamic>> userMaps = await db.rawQuery("SELECT * FROM Users");
    return userMaps.map((userMap) => CRUDDBModel(
      UID: userMap['UID'],
      Name: userMap['Name'],
      City: userMap['City'],
      Gender: userMap['Gender']
    )).toList();
  }

  Future<void> initDB2() async{
    try {
      String path = 'asset/database/user.db';
      await openDatabase(path, onCreate: (db, version) async {
      await db.execute('''
        CREATE TABLE Users (
          UID INTEGER PRIMARY KEY AUTOINCREMENT,
          Name TEXT NOT NULL,
          City TEXT NOT NULL,
          Gender TEXT NOT NULL,
        );''');
    }, version: 1);
    } catch (e) {
      print(e);
    }
  }

  Future<void> addUser ({required CRUDDBModel user}) async {
    Database db = await initDatabase();
    await db.insert('Users', {
      'Name': user.Name,
      'City': user.City,
      'Gender': user.Gender,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> deleteUser ({required int UID}) async {
    Database db = await initDatabase();
    await db.delete('Users', where: 'UID = ?', whereArgs: [UID]);
  }
  Future<void> updateUser ({required CRUDDBModel user}) async {
    Database db = await initDatabase();
    await db.update('Users', {
      'Name': user.Name,
      'City': user.City,
      'Gender': user.Gender,
    }, where: 'UID = ?', whereArgs: [user.UID]);
  }

  Future<CRUDDBModel> fetchUserById({required int UID}) async {
    Database db = await initDatabase();
    List<Map<String, dynamic>> userMaps = await db.query('Users', where: 'UID = ?', whereArgs: [UID]);
    if (userMaps.isNotEmpty) {
      return CRUDDBModel(
        UID: userMaps.first["UID"],
        Name: userMaps.first["Name"], 
        City: userMaps.first["City"], 
        Gender: userMaps.first["Gender"]
      );
    } else {
      print('No user found for ID $UID');
      throw Exception('User not found');
    }
  }
}