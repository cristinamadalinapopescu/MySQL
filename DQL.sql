select * from owners;

insert into owners (firstName, lastName, dateOfBirth, age)
values ('Cornel', 'Catalin', '1997-10-05',25), ('Valeriu', 'Leontin', '1973-11-15',49), ('Catalina', 'Mircescu', '1970-10-09', 52);
insert into owners (firstName, lastName, dateOfBirth, age)
values ('Marina', 'Vlad', '1997-10-18',25), ('Cornel', 'Popescu', '1969-08-09',53);
insert into owners (firstName, lastName, dateOfBirth, age)
values ('Cristina', 'Iulian', '1997-05-10',25);

alter table owners add column city varchar(50);

update owners set city = 'Cluj' where firstName = 'Cornel';

select * from owners where age = 25;

/* Mai jos am filtrat sa se afiseze doar cei nascuti ianinte de data specificata*/
select * from owners where dateOfBirth < '1973-12-05';

/*Mai jos am filtrat sa se afiseze doar cei nascuti dupa data specificata*/
select * from owners where dateOfBirth > '1973-10-05';

/*Mai jos am filtrat sa se afiseze doar cei cu varsta mai mare de 25 de ani.*/
select * from owners where age > 25;
select * from owners where age <= 25;
select * from owners where age >= 25;  /*cei care au cel putin 25 ani*/

/*Returnam pe toti pe care ii cheama Cornel si Valeriu*/
select * from owners where firstName in ('Cornel', 'Valeriu');

/*Returnam pe toti pe care NU ii chema Cornel si Valeriu*/
select * from owners where firstName not in ('Cornel', 'Valeriu');

/*Afiseaza pe toti cei care nu au trecut orasul*/
select * from owners where city is null;

/*Afiseaza pe toti cei care au orasul trecut*/
select * from owners where city is not null;

/*Afisare cei care nu au 25 ani*/
select * from owners where age != 25;

/*Afisare cei care nu au numele Cornel*/
select * from owners where firstName != 'Cornel';

select * from owners where age between 25 and 40;

/*Afisare cei care au firstNmae si incepe cu litera i*/
select * from owners where firstName like 'c%';

/*Afisare cei care au lastName si se termina cu u*/
select * from owners where lastName like '%u';
/*Afiseaza pe cei care au litera A in prenume*/
select * from owners where firstName like '%a%';

/*Afiseaza pe cei nascuti in 1997, anii 70 si cei din 1900*/
select * from owners where dateOfBirth like '1997%';
select * from owners where dateOfBirth like '197%';
select * from owners where dateOfBirth like '19%';

/*Afiseaza pe cei nascuti in ziua 5*/
select * from owners where dateOfBirth like '%05';

/*Afiseaza pe cei care sunt nascuti in luna 10, dar ii ia si pe cei cu ziua 10*/
select * from owners where dateOfBirth like '%10%';

/*Afiseaza DOAR pe cei nascuti in luna 10*/
select * from owners where dateOfBirth like '%-10-%';

select * from owners
where firstName like 'C%'
and dateOfBirth like '197%';

/*Returneaza pe cei al caror prenume incepe cu C si sunt din Cluj*/
select * from owners
where (firstName like 'c%'
OR dateOfBirth like '197%')
and city = 'Cluj';

/*Returneaza pe cei al caror prenume incepe cu C si din Cluj si din afara.*/
select * from owners
where firstName like 'c%'
OR dateOfBirth like '197%'
and city = 'Cluj';

select sum(age) from owners;
select avg(age) from owners;
select min(age) from owners;
select max(age) from owners;
select count(*) from owners;
select count(city) from owners; /*numara de cate ori coloana city este populata*/








