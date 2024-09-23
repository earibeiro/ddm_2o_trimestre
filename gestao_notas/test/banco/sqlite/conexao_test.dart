import 'package:flutter_test/flutter_test.dart';
import 'package:gestao_notas/app/banco/sqlite/conexao.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

main(){
  late Database db;
  setUpAll(() async {
    databaseFactory = databaseFactoryFfi;
    sqfliteFfiInit();
    db = await Conexao.abrir();
  });
  group('Testes de conexão', () {
    test('teste script create table', () async {
      var list = await db.rawQuery('SELECT * FROM professor');
      expect(list.length, 3);
    });
  });
}