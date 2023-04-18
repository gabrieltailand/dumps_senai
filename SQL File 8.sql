CREATE DATABASE escola;
CREATE TABLE cliente(
cod INT(30) PRIMARY KEY,
endereco VARCHAR(20),
nome VARCHAR(20)
);

DESC cliente;
DESC pedido;
SELECT * FROM cliente;
SELECT * FROM pedido;
SELECT * FROM tab_a;
SELECT * FROM tab_b;

CREATE DATABASE produto;
CREATE TABLE pedido(
cod INT(3) PRIMARY KEY,
nome VARCHAR(20)
);

INSERT INTO cliente (cod, endereco, nome)
VALUES
(1, 'Sobradinho', 'Willian'),
(2, 'Guará', 'Geovana'),
(3, 'Taguatinga', 'Gabriel');

INSERT INTO pedido (cod, nome)
VALUES
(1, 'Celular'),
(2, 'Notebook'),
(3, 'Caneta');

SELECT escola.cliente.nome, escola.cliente.endereco, produto.pedido.nome
FROM escola.cliente INNER JOIN produto.pedido ON cliente.cod = pedido.cod;

CREATE TABLE tab_a(
cod INT(30) PRIMARY KEY,
endereco VARCHAR(20),
nome VARCHAR(20)
);

INSERT INTO tab_a (cod, endereco, nome)
VALUES
(1, 'Sobradinho', 'Willian'),
(2, 'Guará', 'Geovana'),
(3, 'Taguatinga', 'Gabriel');

CREATE TABLE tab_b(
cod INT(3) PRIMARY KEY,
nome VARCHAR(20)
);

INSERT INTO tab_b (cod, nome)
VALUES
(4, 'HD'),
(5, 'Lápis'),
(6, 'teclado');

SELECT tab_a.endereco, tab_a.nome, tab_b.nome
FROM tab_a LEFT JOIN tab_b
ON tab_a.cod = tab_b.cod;