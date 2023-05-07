USE nfl;
SHOW TABLES;

DESC conference;
DESC divisions;
DESC teams;

#Subquery simples com SELECT
SELECT t.name AS nome, t.id_division AS divisao
FROM teams AS t
WHERE t.id_division = 
(SELECT d.id
FROM divisions AS d
WHERE d.name = 'NFC WEST' 
);

#Subquery com Insert
CREATE TABLE sb_champs(
	name varchar(45) primary key,
    total_titles int
);
DESC sb_champs;

INSERT INTO sb_champs
(SELECT t.name as nome, t.sb_titles as total_titulos
FROM teams as t
WHERE t.sb_titles >= 1
);
SELECT * FROM sb_champs
ORDER BY total_titles DESC;
