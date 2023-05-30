import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  DataBaseHelper._();
  static final DataBaseHelper instance = DataBaseHelper._();

  static final dataBaseName = 'student.db';
  static final tabelName = 'info';
  static final id = 'id';
  static final name = 'Name';

  static Database? _database;

  Future<Database> get getDatabase async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  _initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, dataBaseName);
    return await openDatabase(path, version: 1, onCreate: _oncreate);
  }

  _oncreate(Database db, int version) {
    db.execute(
        ''' CREATE TABLE $tabelName($id INTGER PRIMARY KEY, $name TEXT NOT NULL)''');
  }

  Future<int> insetData(Map<String, dynamic> data) async {
    Database db = await instance.getDatabase;
    return await db.insert(tabelName, data);
  }

  Future<List<Map<String, dynamic>>> getAllData() async {
    Database db = await instance.getDatabase;
    return await db.query(tabelName);
  }

  Future<int> update(Map<String, dynamic> data) async {
    Database db = await instance.getDatabase;
    int uid = data[id];
    return await db.update(tabelName, data, where: '$id=?', whereArgs: [uid]);
  }

  Future<int> delete(int uid) async {
    Database db = await instance.getDatabase;
    return await db.delete(tabelName, where: '$id=?', whereArgs: [uid]);
  }
}
