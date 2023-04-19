create database senai3;

create table cliente (
cpf int,
nome char(200),
telefone char(14),
email char(60),
primary key(cpf)
);

create table pedido 
(numero_pedido int,
cpf_pedido int, 
data_pedido date,
valor double (11,2),
primary key(numero_pedido),
constraint fk_cpf_pedido foreign key(cpf_pedido) references cliente(cpf)
);

desc pedido;
desc cliente;

-- criação das tabelas sexo e aluno
create table sexo
(cod_sexo int,
descricao varchar(10),
primary key(cod_sexo)
);

create table aluno
(cod_aluno int,
nome_aluno varchar(50),
email varchar(30),
cod_sexo int,
primary key(cod_aluno),
constraint fk_sexo foreign key(cod_sexo) references sexo(cod_sexo)
);

desc aluno;
desc sexo;