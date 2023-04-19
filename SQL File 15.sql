-- Revisão do Conceito Views. 

CREATE VIEW busca_dados_agencia AS
SELECT 
b.nome AS nome_banco,
ab.nome AS nome_agencia,
ab.telefone AS telefone_agencia,
cep.logradouro,
cep.cep
FROM banco AS b
INNER JOIN agencia_banco AS ab on ab.banco_id = b.id
INNER JOIN cep ON cep.id = ab.cep_id;

SELECT * FROM busca_dados_agencia; -- Chamando a View

SELECT * FROM busca_dados_agencia
WHERE nome_banco = 'Banco do Brasil';

SELECT COUNT(*) FROM busca_dados_agencia
WHERE nome_banco = 'Banco do Brasil';

-- View Exercício - Crie uma view que retorne os dados do cliente.

-- CREATE VIEW busca_dados_cliente AS
SELECT
c.nome as nome_cliente,
c.cpf_cnpj,
c.data_cadastro,
concat(logradouro,", ",numero, ", ", complemento, ", ", bairro) AS endereco_cliente,
te.nome AS tipo_endereco,
te.descricao AS descricao_endereco,
cem.email 
FROM cliente AS c
left join endereco AS en ON en.cliente_id = c.id
left join tipo_endereco AS te ON te.id = en.id
left join contato AS co ON co.cliente_id = c.id
left join contato_email AS cem ON cem.contato_id = co.id;





















concat(logradouro, numero, complemento, bairro)