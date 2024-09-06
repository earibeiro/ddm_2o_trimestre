import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:gestao_notas/app/banco/script.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';


main () {
  setUpAll(() {
    databaseFactory = databaseFactoryFfi;
    sqfliteFfiInit();
  });
  
  test('teste de script create table',() async {
    var db2 = await openDatabase(inMemoryDatabasePath);
    deleteDatabase(db2.path);
    
    var db = await openDatabase(inMemoryDatabasePath, version: 1, onCreate: (db, version) {
      criarTabelas.forEach(db.execute);
      inserirRegistros.forEach(db.execute);
      print('Tabelas criadas');
    },
    );
    var list = await db.rawQuery('SELECT * FROM professor');
    expect(list.length, 3);
    });

}