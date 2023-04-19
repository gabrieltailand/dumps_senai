select * from cargo;
select * from colaborador;
select * from empresa;
select * from nivel_formacao;
select * from tipo_colaborador;
insert into colaborador(cargo_id, cpf, data_cadastro, data_nascimento, id_setor, nivel_formacao_id, nome, orgao_rg, rg, tipo_colaborador_id, tipo_sanguineo)
values 
(2, '98765432100', current_date(), '19970217', 1, 1, 'MARIA FERNANDA RODRIGUES', 'SSP-DF', '28200723', 1, 'O-'),
(1, '12345678900', current_date(), '20020512', 2, 1, 'LUCAS OLIVEIRA SANTOS', 'SSP-GO', '12365478', 2, 'A');

update empresa set CNPJ = '33564543000190' where empresa.id = 1;
update empresa set RAZAO_SOCIAL = 'SERVICO NACIONAL DE APRENDIZAGEM INDUSTRIAL' where empresa.id = 1;

insert into endereco(EMPRESA_ID,COLABORADOR_ID,FORNECEDOR_ID,CLIENTE_ID,TIPO_ENDERECO_ID,CEP_ID,LOGRADOURO,NUMERO,COMPLEMENTO,BAIRRO,DONO)
values (1,1,1,1,1,1,'QUADRA 104','23','SETOR COMERCIAL SUL','TAGUATINGA','C'),
(1,2,1,1,1,1,'RUA NORTE','14','SETOR COMERCIAL NORTE','TAGUATINGA','C'),
(1,3,1,1,1,1,'QUADRA 21','105','SETOR HOTELEIRO','ASA NORTE','C'),
(1,4,1,1,1,1,'QUADRA 111','306','SQS','ASA SUL','C'),
(1,5,1,1,1,1,'RUA 07','27','SETOR DE CHACARA','SAMAMBAIA','C');

INSERT INTO CEP(CIDADE_ID,CEP,LOGRADOURO,BAIRRO) VALUES
(2,'73223440','RUA 13','PELORINHO'),(2,'71424432','RUA 13','JARDINS'),
(1,'75943743','QUADRA 115','ASA SUL'),(1,'70263721','QUADRA 202','ASA NORTE'),
(1,'71788320','QUADRA 302','SUDOESTE');

insert into contato(EMPRESA_ID, colaborador_id, CLIENTE_ID, FORNECEDOR_ID,NOME,DONO) VALUES (1,1,1,1,'francisco','C'),(1,2,1,1,'maria','C');

desc fornecedor;