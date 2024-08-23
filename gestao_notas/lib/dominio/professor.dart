import 'package:gestao_notas/dominio/dto/dto_professor.dart';
import 'package:gestao_notas/dominio/cpf.dart' as validador;
import 'package:gestao_notas/dominio/interface/dao_professor.dart';

class Professor {
  late dynamic id;
  late String nome;
  late String? descricao;
  late String cpf;
  late String _status = 'A';
  String get status => _status;
  set status (String status) {
    if(status != 'A' && status != 'I') throw Exception('Status deve ser "A" ou "I".');
    _status = status;
  
  }

  late IDAOProfessor dao;

  late DTOProfessor dto;

  Professor({required this.dto, required this.dao}){
    id = dto.id;
    nome = dto.nome;
    descricao = dto.descricao;
    cpf = dto.cpf;
    status = dto.status;
    validador.CPF(cpf);
  }

  eNomeNaoVazio(){
    if (nome.isEmpty) throw Exception('Nome não pode ser vazio.');
  }

  DTOProfessor salvar(DTOProfessor dto){
    eNomeNaoVazio();
    return dao.salvar(dto);
  }
}