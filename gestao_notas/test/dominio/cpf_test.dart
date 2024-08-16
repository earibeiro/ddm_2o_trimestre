import 'package:flutter_test/flutter_test.dart';
import 'package:gestao_notas/dominio/cpf.dart';

main(){

  group('Entidade CPF', () {
    group('Teste de CPF vazio', () {
      test('Entidade CPF - teste com CPF sem ser vazio', (){
      expect(() => CPF('070.304.390-07'), returnsNormally); //está testando a função anônima, que por sua vez, encapsula o código que pode lançar exceção
      });

      test('Entidade CPF - teste cpf vazio', (){
        expect(() => CPF(''), throwsException); 
      });

    group('[e04] CPF - deve possuir 11 números', () {
      test('Entidade CPF - 11 números', (){
        expect(() => CPF('070.304.390-07').eOnzeNumeros(), returnsNormally);
      });

      test('Entidade CPF - 10 números', (){
        expect(() => CPF('070.304.390-0').eOnzeNumeros(), throwsException);
      });

      test('Entidade CPF - 12 números', (){
        expect(() => CPF('070.304.390-070').eOnzeNumeros(), throwsException);
      });

    });

    group('[e05] CPF - verificar se números são diferentes', () {
      
      test('Teste com números repetidos', (){
        expect(() => CPF('111.222.333-44').eNumerosDiferentes(), returnsNormally);
      });
      
    });
  
    });
  });
}