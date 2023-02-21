use nfl;
show tables;

desc conference;
desc divisions;
desc teams;

#Subquery simples com SELECT
select t.name as nome, t.id_division as divisao
from teams as t
where t.id_division = 
(select d.id
from divisions as d
where d.name = 'NFC WEST' 
);

#Subquery com Insert
CREATE TABLE sb_champs(
	name varchar(45) primary key,
    total_titles int
);
desc sb_champs;

INSERT INTO sb_champs
(SELECT t.name as nome, t.sb_titles as total_titulos
from teams as t
where t.sb_titles >= 1
);
select * from sb_champs
order by total_titles DESC;


