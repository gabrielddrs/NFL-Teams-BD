USE nfl;
SHOW TABLES;

#Fazendo inner join de todas os campos das tabelas
SELECT *
FROM teams
INNER JOIN divisions
ON teams.id_division = divisions.id;

#Fazendo inner join entre duas tabelas e com apenas campos especificos
SELECT t.name AS time, d.name AS divisao
FROM teams AS t
INNER JOIN divisions AS d
ON t.id_division = d.id;

#Inner Join com filtros
SELECT t.name AS time, d.name AS divisao, d.id AS id_divisao
FROM teams AS t
INNER JOIN divisions AS d
ON t.id_division = d.id
WHERE t.id_division = 1;

#Inner Join com 3 tabelas simultâneas
SELECT t.name AS time, d.name AS divisao, c.name AS conferencia
FROM teams AS t
INNER JOIN divisions AS d
ON t.id_division = d.id
INNER JOIN conference AS c
ON d.id_conf = c.id
WHERE t.id_division BETWEEN '1' AND '4'
ORDER BY t.id_division;

#Cross Join entre tabelas
SELECT t.name AS time, c.name AS conferencia
from teams AS t
CROSS JOIN conference AS c;
