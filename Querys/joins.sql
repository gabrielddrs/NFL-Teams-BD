use nfl;
show tables;

#Fazendo inner join de todas os campos das tabelas
select *
from teams
inner join divisions
on teams.id_division = divisions.id;

#Fazendo inner join entre duas tabelas e com apenas campos especificos
select t.name as time, d.name as divisao
from teams as t
inner join divisions as d
on t.id_division = d.id;

#Inner Join com filtros
select t.name as time, d.name as divisao, d.id as id_divisao
from teams as t
inner join divisions as d
on t.id_division = d.id
where t.id_division = 1;

#Inner Join com 3 tabelas simultâneas
select t.name as time, d.name as divisao, c.name as conferencia
from teams as t
inner join divisions as d
on t.id_division = d.id
inner join conference as c
on d.id_conf = c.id
where t.id_division between '1' and '4'
order by t.id_division;

#Cross Join entre tabelas
select t.name as time, c.name as conferencia
from teams as t
cross join conference as c;