import 'dart:math';

import 'package:sqflite/sqflite.dart' as sql;

class RemoteDatabase {
  RemoteDatabase._privateConstructor();

  static final RemoteDatabase instance = RemoteDatabase._privateConstructor();

  factory RemoteDatabase() {
    return instance;
  }

  static sql.Database? _database;

  Future<sql.Database?> get database async {
    if (_database != null) return _database;

    _database = await _initDatabase();
    return _database;
  }

  Future<sql.Database> _initDatabase() async {
    //TODO: Implement this method

    // String pathDB = await sql.getDatabasesPath();
    // String _db = NAME_DB;
    // String path = join(pathDB, _db);
    return await sql.openDatabase(''
        // path,
        // version: VERSION,
        // onCreate: _onCreate,
        );
  }

  Future<void> _onCreate(sql.Database db, int version) async {
    List<String> queries = [
  //TODO: add initials queries here
    ];

    for (String query in queries) {
      await db.execute(query);
    }
  }

  Future<void> deleteDatabase() async {
    try {
      await _database?.close();
    } catch (error) {
      log(e);
    }
  }
}
