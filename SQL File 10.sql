select nome, salario as salario_bruto,
case
when salario <= 1302.00 then (salario * 7.5 )/100
when salario > 1302.01 and salario < 2571.29 then salario * 0.09 -- (salario * 9)/100
when salario > 2571.30 and salario < 3856.94 then (salario * 12)/100
when salario > 3856.95 and salario < 7507.49 then (salario * 14)/100
when salario > 7507.50 then (salario * 16)/100
end as aliquota_inss,
case
when salario <= 1302.00 then salario - ((salario * 7.5)/100)
when salario > 1302.01 and salario < 2571.29 then salario - (salario * 0.09) -- (salario * 9)/100
when salario > 2571.30 and salario < 3856.94 then salario - ((salario * 12)/100)
when salario > 3856.95 and salario < 7507.49 then salario - ((salario * 14)/100)
when salario > 7507.50 then salario - ((salario * 16)/100)
end salario_liquido
from cargo;

select * from cargo;
select * from colaborador;
select sum(salario) from cargo;

select c.nome, c.cpf, ca.nome, ca.salario
from colaborador as c
left join cargo as ca on ca.id = c.cargo_id;

# Soma os salários de cada colaborador, conforme o seu cargo.
select sum(ca.salario) from colaborador as c
left join cargo as ca on ca.id = c.cargo_id;

# Soma os salários agrupando por tipo de cargo.
select ca.nome as nome_cargo,
sum(ca.salario) as soma_salario
from colaborador as c
left join cargo as ca on ca.id = c.cargo_id
group by ca.nome;

# Conta a quantidade de cargos.
select ca.nome as nome_cargo,
count(ca.nome) as qt_cargo,
sum(ca.salario) as soma_salario
from colaborador as c
left join cargo as ca on ca.id = c.cargo_id
group by ca.nome;

# Calcula a média aritimética de uma coluna.
select
avg(salario) as media_salario from cargo;

select max(salario) as maior_salario from cargo;
select nome as cargo, min(salario) as menor_salario from cargo;

select * from produto
where nome_produto like 'c%a';

select * from produto
where nome_produto not like 'a%';