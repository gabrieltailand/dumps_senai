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
