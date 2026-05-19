create database bdlicao;
use bdlicao;

CREATE TABLE funcionarios (
    id           INT             PRIMARY KEY,
    nome         VARCHAR(100),
    email        VARCHAR(100),
    departamento VARCHAR(100),
    cargo        VARCHAR(100),
    salario      DECIMAL(10,2)
);

CREATE INDEX idx_nome
    ON funcionarios (nome);

CREATE INDEX idx_departamento
    ON funcionarios (departamento);

CREATE INDEX idx_dept_cargo
    ON funcionarios (departamento, cargo);

CREATE UNIQUE INDEX uq_email
    ON funcionarios (email);

SHOW INDEX FROM funcionarios;

DROP INDEX idx_nome ON funcionarios;

DROP INDEX uq_email ON funcionarios;

SELECT id, nome, cargo, salario
FROM   funcionarios
WHERE  departamento = 'TI';

SELECT id, nome, salario
FROM   funcionarios
WHERE  departamento = 'TI'
  AND  cargo        = 'Desenvolvedor';

EXPLAIN SELECT id, nome, cargo, salario
FROM   funcionarios
WHERE  departamento = 'TI';

EXPLAIN SELECT id, nome, salario
FROM   funcionarios
WHERE  departamento = 'TI'
  AND  cargo        = 'Desenvolvedor';
