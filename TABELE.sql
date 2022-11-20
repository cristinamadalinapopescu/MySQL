rename table petowner to owners;
alter table owners change onwerLastName lastName varchar(25);
alter table owners add column dateOfBirth date;

/*Instructiunea de insert*/
insert into owners (firstName, lastName, dateOfBirth)
values('Jim','Leonte', '1999-10-09'); 

/*Adaugam inca doua randuri*/
insert into owners (firstName, lastName, dateOfBirth)
values('Ionel','Petre', '1998-08-24'), ('Narcisa', 'Manole', '1997-12-04');

/*Instructiune de insert far specificarea coloanelor = eroare*/
insert into owners values('Tom', 'Mihalcea', '1999-09-09');
insert into owners values('Tom', 'Mihalcea'); -- va returna eroare

/*Verificam cu SELECT rezultatele instructiunii de INSERT*/
select * from owners;

/*Stergem toate inregistrarile din tabela*/
delete from owners;

/*Verificam rezultatele instructiunii DELETE*/
select * from owners;

/*Stergem toate inregistrarile din tabela cu TRUNCATE*/
truncate table owners;

/*Verificam rezultatele instructiunii TRUNCATE*/
select * from owners;

/*DELETE si TRUNCATE
- DELETE are capacitatea de a numara inregistrarile pe care le sterge
- TRUNCATE sterge fara a numara
- Cu DELETE putem sa filtram si sa stergem doar anumite inregistrari
- Cu TRUNCATE nu putem face filtrare
*/
