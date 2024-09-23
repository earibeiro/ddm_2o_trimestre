import 'package:gestao_notas/app/dominio/interface/i_dao_professor.dart';
import 'package:gestao_notas/app/dominio/professor.dart';
import 'package:gestao_notas/app/dominio/dto/dto_professor.dart';
import 'package:gestao_notas/app/banco/sqlite/dao_professor.dart';

class AProfessor {
  late Professor professor;
  IDAOProfessor dao = DaoProfessor();

  AProfessor({required DTOProfessor dto}) {
    professor = Professor(nome: dto.nome, CPF: dto.cpf, status: dto.status, dao: dao);
  }

  salvar(){
    professor.incluir();
  }
}