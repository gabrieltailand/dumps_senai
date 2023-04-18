  CREATE DATABASE sfibra;
  USE sfibra;
  
CREATE TABLE cliente (
cod INT(3),
nome VARCHAR(50)
);

CREATE TABLE produto (
cod INT(3),
descricao VARCHAR(100)
);

CREATE TABLE preco (
cod INT(3),
nome DECIMAL(5,2)
);

CREATE TABLE venda (
comprador INT(3),
produto INT(3),
qtdade INT(3)
);

SHOW TABLES;
DESC produto;

INSERT INTO cliente (cod, descricao)
VALUES
(1, 'Ana'),
(2, 'Pedro'),
(3, 'Tânia'),
(4, 'Maria'),
(5, 'João');

INSERT INTO produto (cod, descricao)
VALUES
(1, 'Barco'),
(2, 'Sabonete'),
(3, 'Abacaxi');

SELECT * FROM cliente;

ALTER TABLE cliente
RENAME COLUMN descricao TO nome;

SELECT * FROM preco;

ALTER TABLE preco
RENAME COLUMN nome TO valor;

INSERT INTO preco (cod, valor)
VALUES
(1, 500.80),
(2, 32.89),
(3, 2.00);

SELECT * FROM preco;

INSERT INTO venda VALUES
(3, 1, 1),
(1, 2, 8),
(2, 2, 5),
(1, 3, 1),
(4, 3, 10),
(2, 1, 1);


UPDATE cliente
SET nome = 'nome', nome = 'Ana' WHERE cod = 1; 

UPDATE cliente
SET nome = 'nome', nome = 'Pedro' WHERE cod = 2;

UPDATE cliente
SET nome = 'nome', nome = 'Tânia' WHERE cod = 3;

UPDATE cliente
SET nome = 'nome', nome = 'Maria' WHERE cod = 4;

UPDATE cliente
SET nome = 'nome', nome = 'João' WHERE cod = 5;

SELECT * FROM venda ORDER BY comprador;

SELECT SUM(valor) FROM preco;

SELECT qtdade FROM venda
WHERE qtdade BETWEEN 5 AND 10;

SELECT nome FROM cliente
WHERE nome LIKE '%a_';
