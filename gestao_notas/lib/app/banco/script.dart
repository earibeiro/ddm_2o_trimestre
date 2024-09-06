const criarTabelas = [
  '''
  CREATE TABLE professor (
    id INTEGER NOT NULL PRIMARY KEY
    ,nome VARCHAR(200) NOT NULL
    ,descricao VARCHAR(200)
    ,cpf CHAR(14) NOT NULL UNIQUE
    ,status CHAR (1) NOT NULL
    )
  '''
];

const inserirRegistros = [
  'INSERT INTO professor (nome, cpf, status) VALUES ("JOAQUIM", "391.650.590-42", "A")'
  ,'INSERT INTO professor (nome, cpf, status) VALUES ("MARIANA", "724.876.030-70", "A")'
  ,'INSERT INTO professor (nome, cpf, status) VALUES ("ROBERTO", "959.358.840-03", "A")'
];