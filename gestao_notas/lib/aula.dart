main() {
  definirCor();
  print('abrir tela');
  print('carregar botões');
  print('carregar campos');
  print('carregar imagens');
}

definirCor() {
  buscarDados().then(
    (value)=> print('definir cor')
  );
}

buscarDados() async {
  await Future.delayed(Duration(seconds: 3), () {
    print('Carregar dados...'); 
  });
}

/*
main() async {
  await definirCor();
  print('abrir tela');
  print('carregar botões');
  print('carregar campos');
  print('carregar imagens');
}

definirCor() async {
  await buscarDados();
  print('definir cor');
}

buscarDados() async {
  await Future.delayed(Duration(seconds: 3), () {
    print('Carregar dados...'); 
  });
}
*/