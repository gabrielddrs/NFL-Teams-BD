CREATE DATABASE NFL;
SHOW DATABASES;
USE nfl;

#DDL
show tables;
CREATE TABLE conference(
	id int primary key,
    name enum('AFC', 'NFC') not null
);
desc conference;

CREATE TABLE divisions(
	id int primary key,
    name varchar(8) not null,
    id_conf int not null,
    foreign key divisions(id_conf) references conference(id)
);
desc divisions;

alter table divisions
modify name varchar(15) not null;

CREATE TABLE teams(
	name varchar(45) primary key,
    stadium varchar(45) not null,
    city varchar(45) not null,
    head_coach varchar(45) not null,
    id_division int,
    id_conf int,
    foreign key teams(id_division) references divisions(id)
);
desc teams;
alter table teams
drop column id_conf;

show tables;

#DML

insert into conference 
values (1, 'AFC'),
(2, 'NFC');
select * from conference;

insert into divisions
values (1, 'AFC North', 1),
(2, 'AFC East', 1),
(3, 'AFC West', 1),
(4, 'AFC South', 1),
(5, 'NFC North', 2),
(6, 'NFC East', 2),
(7, 'NFC West', 2),
(8, 'NFC South', 2);
select * from divisions;

insert into teams
values ('Baltimore Ravens', 'M&T Bank Stadium', 'Baltimore-Maryland', 'John Harbaugh'. 1),
('Cleveland Browns','FirstEnergy Stadium','Cleveland-Ohio','Kevin Stefanski', 1),
('Cincinnati Bengals','Paycor Stadium','Cincinnati-Ohio','Zac Taylor', 1),
('Pittsburgh Steelers','Acrisure Stadium','Pittsburgh-Pennsylvania','Mike Tomlin', 1),
('Buffalo Bills','Highmark Stadium','Orchard Park-New York','Sean McDermott', 2),
('Miami Dolphins','Hard Rock Stadium','Miami-Florida','Mike McDaniel', 2),
('New England Patriots','Gillette Stadium','Foxborough-Massachusetts','Bill Belichick', 2),
('New York Jets','Metlife Stadium','East Rutherford-New Jersey','Robert Saleh', 2),
('Denver Broncos','Empower Field at Mile High','Denver-Colorado','Sean Payton', 3),
('Kansas City Chiefs','Arrowhead Stadium','Kansas CIty-Missouri','Andy Reed', 3),
('Las Vegas Raiders','Allegiant stadium','Paradise-Nevada','Josh Mcdaniels', 3),
('Los Angeles Chargers','SoFi Stadium','Inglewood-California','Brandon Staley', 3),
('Indianapolis Colts','Lucas Oil Stadium','Indianapolis-Indiana','Shane Steichen', 4),
('Houston Texans','NRG Stadium','Houston-Texas','DeMeco Ryans', 4),
('Jacksonville Jaguars','TIAA Bank Field','Jacksonville-FLorida','Doug Pederson', 4),
('Tennessee Titans','Nissan Stadium','Nashville-Tennessee','Mike Vrabel', 4),
('Chicago Bears','Soldier Field','Chicago-Illinois','Matt Eberflus', 5),
('Detroit Lions','Ford Field','Detroit-Michigan','Dan Campbell', 5),
('Green Bay Packers','','','', ),
('','','','', ),
('','','','', ),
('','','','', ),
('','','','', ),
('','','','', ),
('','','','', ),
('','','','', ),
('','','','', ),
('','','','', ),
('','','','', ),
('','','','', ),
('','','','', ),
('','','','', ),
('','','','', ),