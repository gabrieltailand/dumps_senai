-- CREATE VIEW busca_dados_cliente AS
SELECT
c.nome as nome_cliente,
c.cpf_cnpj,
c.data_cadastro,
concat(logradouro,", ",numero, ", ", complemento, ", ", bairro) AS endereco_cliente,
te.nome AS tipo_endereco,
te.descricao AS descricao,
cem.email,
ctel.telefone 
FROM cliente AS c
left join endereco AS en ON en.cliente_id = c.id
left join tipo_endereco AS te ON te.id = en.id
left join contato AS co ON co.cliente_id = c.id
left join contato_email AS cem ON cem.contato_id = co.id
left join contato_telefone AS ctel ON ctel.contato_id = co.id;
-- -------------------------------------------------------------
select * from cliente; 
select * from contato;
select * from contato_email;
select * from endereco;
select * from contato_telefone;
select * from tipo_telefone;
select * from tipo_email;
-- ------------------------------------------------------------
select * from busca_dados_cliente;