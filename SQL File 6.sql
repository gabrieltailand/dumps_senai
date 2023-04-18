SELECT * FROM cliente;
SELECT * FROM cliente WHERE cod < 3 AND nome LIKE '%o' OR nome LIKE '%a%';

DESC produto;
SELECT * FROM produto;
SELECT * FROM preco;
SELECT * FROM venda;

SELECT descricao, valor FROM produto, preco
WHERE produto.cod = preco.cod;

SELECT AVG(valor) FROM preco;
SELECT SUM(valor) FROM preco;
SELECT COUNT(*) FROM preco;
SELECT MIN(valor) FROM preco;
SELECT MAX(valor) FROM preco;


SELECT descricao, SUM(qtdade) AS unidades
FROM produto, venda
WHERE produto.cod = venda.produto
GROUP BY descricao;

SELECT DISTINCT descricao
FROM produto, venda
WHERE produto.cod = venda.produto;

SELECT descricao FROM produto
WHERE cod >= 2;

SELECT descricao FROM produto
WHERE descricao IN ('Abacaxi', 'Sabonete');