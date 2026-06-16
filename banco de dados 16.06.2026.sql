CREATE DATABASE empresa;
USE empresa;

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10,2)
);

INSERT INTO funcionarios (nome, cargo, salario) VALUES
('Ana',     'Analista', 3500.00),
('Bruno',   'Técnico',  2800.00),
('Carlos',  'Analista', 4200.00),
('Daniela', 'Gerente',  6500.00);

-- Exercício 1: apagar apenas o Bruno
DELETE FROM funcionarios WHERE nome = 'Bruno';

-- Exercício 2: apagar todos os Analistas
DELETE FROM funcionarios WHERE cargo = 'Analista';

-- Exercício 3: apagar todos os registros (tabela fica vazia, mas existe)
DELETE FROM funcionarios;

-- Exercício 4: destruir a tabela inteira
DROP TABLE funcionarios;

-- Exercício 5: tentar consultar a tabela destruída (vai gerar erro)
SELECT * FROM funcionarios;
-- ERROR 1146: Table 'empresa.funcionarios' doesn't exist

-- Exercício 6: destruir o banco de dados
DROP DATABASE empresa;

/*
  DESAFIO — diferença entre DELETE e DROP:

  DELETE FROM funcionarios;
    → Remove apenas os DADOS (linhas) da tabela.
      A estrutura (colunas, índices) continua existindo.
      É reversível com ROLLBACK dentro de uma transação.
      Analogia: esvaziar uma gaveta.

  DROP TABLE funcionarios;
    → Destroi a tabela por completo: apaga dados E estrutura.
      Não pode ser desfeito — é permanente.
      Analogia: jogar fora a gaveta junto com tudo que estava dentro.
*/