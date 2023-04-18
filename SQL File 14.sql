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