CREATE DATABASE bdIndice;
USE bdIndice;
 
CREATE TABLE alunos (
id INT PRIMARY KEY,
nome VARCHAR(100),
email VARCHAR(100),
cidade VARCHAR(100),
idade INT
);
 
CREATE INDEX idx_nome
ON alunos(nome);
 
SHOW INDEX FROM alunos;
 
CREATE INDEX idx_cidade
ON alunos(cidade);
 
CREATE UNIQUE INDEX idx_email
ON alunos(email);
 
DROP INDEX idx_nome
ON alunos;
 
DROP INDEX idx_email
ON alunos;
 
EXPLAIN
SELECT *
FROM alunos
WHERE cidade = "São Paulo";