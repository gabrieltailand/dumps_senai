create database senai;
use senai;

create table pai (
id_pai int primary key auto_increment,
nome_pai varchar(100),
endereco varchar(200),
cpf varchar(14),
email varchar(100)
);

create table filho (
id_filho int primary key auto_increment,
id_pai int,
nome_pai varchar(100),
endereco varchar(200),
cpf varchar(14),
email varchar(100),
constraint fk_id_pai foreign key(id_pai) references pai(id_pai)
);

# Inclusão das colunas id_sexo nas tabelas "Pai" e "Filho"
alter table pai
add column id_sexo int;
alter table filho
add column id_sexo int;

# Criação da tabela "Gênero"
create table genero (
id_sexo int primary key,
sexo_pai bit(1),
sexo_filho bit(1)
);

# Incluindo chave extrangeira nas tabelas "Pai" e "Filho"
alter table pai
add foreign key (id_sexo)
references genero(id_sexo);

alter table filho
add foreign key (id_sexo)
references genero(id_sexo);

alter table genero
drop column sexo_pai;
alter table genero
drop column sexo_filho;

alter table genero
add column descricao varchar(10);

insert into genero (id_sexo, descricao) values (1, 'Masculino'), (2, 'Femenino');
insert into pai (nome, endereco, cpf, email, id_sexo)
values 
('Carlos', 'Rua 10', '92158623145', 'carlos@gmail.com', 1),
('Maria', 'Rua 15', '85246582112', 'maria@gmail.com', 2),
('Fernando', 'Rua 25', '05489246512', 'fernando@gmail.com', 1);

select * from genero;