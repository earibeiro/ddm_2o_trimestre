class CPF{
  late List<int> numerosCPF;

  CPF(String cpf){
    if(cpf.isEmpty) throw Exception("CPF - não pode ser vazio");
    cpf = cpf.replaceAll(RegExp(r'\D'), ''); //remove tudo que não é dígito
    var temp = cpf.split(''); //transforma em lista de string
    numerosCPF = <int>[];//cria uma lista de inteiros
    for (var e in temp){
      int numero = int.parse(e);
      numerosCPF.add(numero);
    }

    numerosCPF = cpf.split('').map((e) => int.parse(e)).toList(); //transforma em lista de inteiros
  }


  bool eOnzeNumeros(){
    if(numerosCPF.length != 11) throw Exception('CPF deve possuir 11 números'); 
    return true;
  }

  bool eNumerosDiferentes(){
    for (var i = 0; i < numerosCPF.length - 1; i++){
      if(numerosCPF[i] != numerosCPF[i+1]){
        return true;
      } 
    }
    throw Exception ('O CPF não pode ter todos os números iguais');
    
  } //verificar se os números são diferentes


  bool eDigitosCorretos(int indice){
    if(calcularDigito(8)!=numerosCPF[9]) throw Exception('CPF - primeiro dígito verificador inválido');
    if(calcularDigito(9)!=numerosCPF[10]) throw Exception('CPF - segundo dígito verificador inválido');
    return true;
  }
  
  int calcularDigito(int indice){
    int soma = 0;
    for (var i = 0; i < indice; i++){
      soma += numerosCPF[i] * (indice + 1 - i);
    }
    int digito = soma % 11;
    if (digito == 10) digito = 0;
    return digito;
  }


  } //verifica se o CPF é válido

/*
  bool eUnico(){


  }//verifica se o CPF é único

*/

/*
CPF - não pode ser vazio ou nulo; CE
[e04] CPF - deve possuir 11 números; VL
[e05] CPF - verificar se números são diferentes; DE
[e06] CPF - verificar os dígitos verificadores; CE
[e07] CPF - deve ser único.
*/