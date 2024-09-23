import 'package:flutter_test/flutter_test.dart';
import 'package:gestao_notas/dominio/interface/dao_professor.dart';
import 'package:gestao_notas/dominio/professor.dart';
import 'package:gestao_notas/dominio/dto/dto_professor.dart';

class DAOProfessor implements IDAOProfessor{
    @override
    DTOProfessor salvar(DTOProfessor dto) {
      return dto;
    }
  }

main(){
  var dto = DTOProfessor(nome: 'Edson', cpf: '070.304.390-07', status: 'A');
  var dtoNomeVazio = DTOProfessor(nome: '', cpf: '070.304.390-07', status: 'A');
  /*var dtoCpfVazio = DTOProfessor(nome: 'Edson', cpf: '', status: 'A');*/
  var dao = DAOProfessor();
  var professor = Professor(dto: dto, dao: dao);

  group('Entidade Professor', () {

    group('Teste de nome vazio', () {

      test('Entidade Professor - teste com nome preenchido', () {
        expect(() => professor.eNomeNaoVazio(), returnsNormally);
      });

      test('Entidade Professor - teste com nome vazio', () {
        expect(() => Professor(dto: dtoNomeVazio, dao: dao).eNomeNaoVazio(), throwsException);
      });

    });

    group ('Teste com status inválido', (){

      test('Entidade Professor - teste com status A', () {
        expect(() => professor.status = 'A', returnsNormally);
      });
      
      test('Entidade Professor - teste com status I', () {
        expect(() => professor.status = 'I', returnsNormally);
      });

      test('Entidade Professor - teste com status inválido', () {
        expect(() => professor.status = 'X', throwsException);
      });

    });

    /*group ('Teste de conexão', (){
        test('Entidade Professor - teste de conexão com banco de dados', () {
          expect(() => professor.salvar(), returnsNormally);
        });
    });*/

  });

}