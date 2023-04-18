select
cargo.nome as nome_cargo,
salario as salario_bruto,
e.razao_social,
e.nome_fantasia,
e.cnpj,
concat(logradouro,", ",numero, ", ", complemento, ", ", bairro) as endereco_empresa,
c.id as id_colaborador,
c.nome as nome_colaborador,
month(now()) as mes_referencia,
year(now()) as ano_referencia,
case
when salario <= 1302.00 then (salario * 7.5 )/100
when salario > 1302.01 and salario < 2571.29 then salario * 0.09 -- (salario * 9)/100
when salario > 2571.30 and salario < 3856.94 then (salario * 12)/100
when salario > 3856.95 and salario < 7507.49 then (salario * 14)/100
when salario > 7507.50 then (salario * 16)/100
end as inss,
 case
  when cargo.SALARIO <= 1903.98 THEN 0
  when cargo.SALARIO between 1903.99 and 2826.65 then cargo.SALARIO * 0.075
  when cargo.SALARIO between 2826.66 and 3751.05 then cargo.SALARIO * 0.15
  when cargo.SALARIO between 3751.06 and 4664.68 then cargo.SALARIO * 0.225
  when cargo.SALARIO > 4664.68 then cargo.SALARIO * 0.275
  end irrf,
  case
  when cargo.SALARIO <= 1903.98 THEN 0
  when cargo.SALARIO between 1903.99 and 2826.65 then 0.075
  when cargo.SALARIO between 2826.66 and 3751.05 then 0.15
  when cargo.SALARIO between 3751.06 and 4664.68 then 0.225
  when cargo.SALARIO > 4664.68 then 0.275
  end faixa_irrf,
  case
  when cargo.SALARIO >= 0.00 THEN cargo.salario * 0.08
  end fgts,
case
when salario <= 1302.00 then salario - ((salario * 7.5)/100)
when salario > 1302.01 and salario < 2571.29 then salario - (salario * 0.09) -- (salario * 9)/100
when salario > 2571.30 and salario < 3856.94 then salario - ((salario * 12)/100)
when salario > 3856.95 and salario < 7507.49 then salario - ((salario * 14)/100)
when salario > 7507.50 then salario - ((salario * 16)/100)
end salario_liquido
from cargo
left join colaborador as c on c.cargo_id = cargo.id
left join setor as s on s.id = c.id_setor
left join empresa as e on e.id = s.empresa_id
left join endereco as en on en.empresa_id = e.id;


select
cargo.nome as nome_colaborador,
salario as salario_bruto,
e.nome_fantasia,
e.cnpj,
concat(logradouro,", ",numero, ", ", complemento, ", ", bairro) as endereco_empresa,
CASE  
  WHEN cargo.SALARIO BETWEEN 1212.01 AND 2427.35  THEN cargo.SALARIO * 0.09
  WHEN cargo.SALARIO BETWEEN 2427.36 AND 3641.03 THEN cargo.SALARIO * 0.12
  WHEN cargo.SALARIO BETWEEN 3641.04 AND 7087.22 THEN cargo.SALARIO * 0.14
  WHEN cargo.SALARIO <= 1212.00 THEN cargo.SALARIO * 0.075
  WHEN cargo.SALARIO > 7087.22 THEN cargo.SALARIO * 0.16
  END INSS,
  CASE
  WHEN cargo.SALARIO <= 1903.98 THEN 0
  WHEN cargo.SALARIO BETWEEN 1903.99 AND 2826.65 THEN cargo.SALARIO * 0.075
  WHEN cargo.SALARIO BETWEEN 2826.66 AND 3751.05 THEN cargo.SALARIO * 0.15
  WHEN cargo.SALARIO BETWEEN 3751.06 AND 4664.68 THEN cargo.SALARIO * 0.225
  WHEN cargo.SALARIO > 4664.68 THEN cargo.SALARIO * 0.275
  END IRRF,
  CASE
  WHEN cargo.SALARIO <=  1212.00 THEN cargo.SALARIO - (cargo.SALARIO * 0.075)
  WHEN cargo.SALARIO BETWEEN 1212.01 AND 1903.98 THEN cargo.SALARIO - (cargo.SALARIO * 0.09)
  WHEN cargo.SALARIO BETWEEN 1903.99 AND 2427.35 THEN cargo.SALARIO - (cargo.SALARIO * 0.165)
  WHEN cargo.SALARIO BETWEEN 2427.36 AND 3641.03 THEN cargo.SALARIO - (cargo.SALARIO * 0.27)
  WHEN cargo.SALARIO BETWEEN 3641.04 AND 3751.05 THEN cargo.SALARIO - (cargo.SALARIO * 0.29)
  WHEN cargo.SALARIO BETWEEN 3751.06 AND 4664.68 THEN cargo.SALARIO - (cargo.SALARIO * 0.365)
  WHEN cargo.SALARIO BETWEEN 4664.69 AND 7087.22 THEN cargo.SALARIO - (cargo.SALARIO * 0.415)
  WHEN cargo.SALARIO >= 7087.23 THEN cargo.SALARIO - (cargo.SALARIO * 0.435)
  END SALARIO_LIQUIDO
from cargo
left join colaborador as c on c.cargo_id = cargo.id
left join setor as s on s.id = c.id_setor
left join empresa as e on e.id = s.empresa_id
left join endereco as en on en.empresa_id = e.id
where
c.cpf =  $P{cpf}  ;