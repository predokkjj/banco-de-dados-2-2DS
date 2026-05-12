create database escolabd;
use escolabd;
CREATE TABLE alunos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT
);
INSERT INTO alunos (id, nome, idade)
VALUES (1, 'Ana Silva', 18);
INSERT INTO alunos (id, nome, idade)
VALUES (2, 'Carlos Souza', 20);
INSERT INTO alunos (id, nome, idade)
VALUES (3, 'Mariana Oliveira', 19);
alter table alunos add email varchar(150);
alter table alunos add data_nascimento date;
alter table alunos modify idade tinyint;
alter table alunos change nome nome_completo varchar(100);
alter table alunos drop idade;
alter table alunos modify nome_completo varchar(100) not null;
alter table alunos modify email varchar(150) unique;
alter table alunos rename estudantes;
alter table estudantes modify email varchar(150) after nome_completo;
alter table estudantes modify email varchar(150);
select * from estudantes;