CREATE DATABASE IF NOT EXISTS cadastro;
USE cadastro;

CREATE TABLE pessoa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT,
    email VARCHAR(100)
);

INSERT INTO pessoa (nome, idade, email) VALUES
('João Silva', 30, 'joao@email.com'),
('Maria Souza', 25, 'maria@email.com'),
('Carlos Lima', 40, 'carlos@email.com'),
('Ana Costa', 22, 'ana@email.com'),
('Pedro Rocha', 35, 'pedro@email.com');

ALTER TABLE pessoa
ADD telefone VARCHAR(20);

ALTER TABLE pessoa
MODIFY idade SMALLINT;

ALTER TABLE pessoa
CHANGE nome nome_completo VARCHAR(150);

ALTER TABLE pessoa
DROP COLUMN email;

SELECT * FROM pessoa;