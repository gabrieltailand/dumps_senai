-- FUNÇÕES - COMO CRIAR E CONSULTAR USANDO FUNÇÕES

CREATE TABLE funcionarios(
id_funcionario int PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome varchar(40) NOT NULL,
sobrenome varchar(40) NOT NULL,
telefone varchar(40) NOT NULL,
data_nascimento DATE,
endereco varchar(80) NOT NULL,
data_contratacao DATE,
salario DECIMAL(7,2),
cargo varchar(40) NOT NULL);

INSERT INTO funcionarios (nome, sobrenome, telefone, data_nascimento, endereco, data_contratacao, salario,cargo)
VALUES ('Araújo','Catumbela','1432222222',STR_TO_DATE( "11/02/1994","%d/%m/%Y" ),'Rua dos Bandeirantes 3-33',STR_TO_DATE( "17/02/2013","%d/%m/%Y"),7200,'Diretor Geral');

INSERT INTO funcionarios (nome,sobrenome,telefone,data_nascimento,endereco,data_contratacao,salario,cargo)
VALUES ('Moisés','Mendrote','144562222',STR_TO_DATE( "26/07/1999","%d/%m/%Y" ),'Rua 12 de julho 5-30',STR_TO_DATE( "15/02/2015","%d/%m/%Y"),4500,'DiretorAnalista');

INSERT INTO funcionarios (nome,sobrenome,telefone,data_nascimento,endereco,data_contratacao,salario,cargo)
VALUES ('Ana','Juliana','14824222',STR_TO_DATE("2/03/2000","%d/%m/%Y" ),'Rua 15 de outubro 6-12',STR_TO_DATE("17/05/2017","%d/%m/%Y"),3700,'Diretor de Marketing');

select * from funcionarios;

-- Criando uma função para calcular o tempo de serviço
DELIMITER //
CREATE FUNCTION tempo_servico(data_inicio date)
RETURNS int
DETERMINISTIC
BEGIN
DECLARE data_atual DATE;
Select current_date()into data_atual;
RETURN year(data_atual)-year(data_inicio);
END //
DELIMITER ;

SELECT tempo_servico(data_contratacao) AS TEMPO_SERVICO FROM funcionarios;

SELECT NOME, YEAR(data_contratacao) AS ANO_CONTRATACAO,
YEAR(CURRENT_DATE()) AS DATA_ATUAL,
tempo_servico(data_contratacao) AS TEMPO_SERVICO
FROM funcionarios;

DELIMITER \\
CREATE FUNCTION `busca_funcionario` (id INT)
RETURNS VARCHAR(150)
DETERMINISTIC
BEGIN
	DECLARE vTexto VARCHAR(150);
    DECLARE vQuantidade INT;
		SELECT COUNT(*) INTO vQuantidade FROM funcionarios WHERE id = id_funcionarios;
			IF vQuantidade = 1 THEN
				SELECT nome INTO vTexto FROM funcionarios WHERE id_funcionario = id;
			ELSE 
				SET vTexto = 'Funcionário não encontrado';
			END IF;
			RETURN(vTexto);
END \\


SELECT busca_funcionario(2) FROM funcionarios;








