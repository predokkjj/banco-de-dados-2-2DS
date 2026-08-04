CREATE DATABASE bdManhaJoin2;
USE bdManhaJoin2;

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE
);

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(100),
    preco DECIMAL(10,2)
);

CREATE TABLE itens_pedido (
    id_item INT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT
);

INSERT INTO clientes VALUES
(1, 'Ana'),
(2, 'Bruno'),
(3, 'Carlos');

INSERT INTO pedidos VALUES
(101, 1, '2024-01-10'),
(102, 1, '2024-01-15'),
(103, 2, '2024-01-20');

INSERT INTO produtos VALUES
(1, 'Notebook', 3000),
(2, 'Mouse', 50),
(3, 'Teclado', 100);

INSERT INTO itens_pedido VALUES
(1, 101, 1, 1),
(2, 101, 2, 2),
(3, 102, 3, 1),
(4, 103, 2, 1);

-- nome cliente + data pedido + quantidade + nome do produto + preco
SELECT 
    clientes.nome, 
    pedidos.data_pedido, 
    itens_pedido.quantidade, 
    produtos.nome_produto, 
    produtos.preco
FROM clientes  
INNER JOIN pedidos 
    ON clientes.id_cliente = pedidos.id_cliente
INNER JOIN itens_pedido 
    ON pedidos.id_pedido = itens_pedido.id_pedido
INNER JOIN produtos 
    ON itens_pedido.id_produto = produtos.id_produto;
