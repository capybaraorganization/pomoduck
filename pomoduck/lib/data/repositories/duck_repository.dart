import 'package:pomoduck/data/remote/remote_database.dart';
import 'package:pomoduck/domain/entity/duck.dart';
import 'package:sqflite/sqflite.dart';

class DuckRepository {
  Future<Duck> fetchDuck() async {
    Database? db = await RemoteDatabase.instance.database;

    final duck = await db!.query('duck');
    //METHOD EXAMPLE 
    return Duck.fromMap(duck.first);
  }
}
