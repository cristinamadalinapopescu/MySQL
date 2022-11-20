/*Crearea unei tabele*/
/*DDL - Data Definition Language*/

CREATE TABLE owners (
    firstName VARCHAR(25) NOT NULL,
    lastName VARCHAR(25) NOT NULL
);

/* Adaugarea unei coloane intr-o tabela*/
alter table owners
add column age int;

/*Stergerea unei coloane din tabela*/
alter table owners drop column age;


desc owners; -- arata structura tabelei
alter table owners modify firstName char(25) NOT NULL;
alter table owners modify lastName char (25) NOT NULL;

/*Instructiunea de CHANGE ajuta la schimbarea numelui unei coloane.*/
alter table owners change lastName onwerLastName char(25) NOT NULL;

/*Insttuctiunea de RENAME ajut la schimbarea numelui tabelei.*/
alter table owners rename to petOwner;

/*Instructiunea DROP TABLE sterge tabela cu toate informatiile*/
drop table petOwner; -- !!!se va sterge tabela impreuna cu toate informatiile din ea si nu se mai poate recupera.