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
    for (var i = 0; i < numerosCPF.length; i++){
      if(numerosCPF[i] != numerosCPF[i+1]) return true;
    }
    return false;
  } //verificar se os números são diferentes

/*
  bool eDigitosCorretos(){
    var soma = 0;
    for (var i = 0; i < 9; i++){
      soma += numerosCPF[i] * (10-i);
    }
    var resto = soma % 11;
    var digitoVerificador = resto 

  } //verifica se o CPF é válido

  bool eUnico(){

  }
*/
}

/*
CPF - não pode ser vazio ou nulo; CE
[e04] CPF - deve possuir 11 números; VL
[e05] CPF - verificar se números são diferentes; DE
[e06] CPF - verificar os dígitos verificadores; CE
[e07] CPF - deve ser único.
*/