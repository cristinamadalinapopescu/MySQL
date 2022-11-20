/*---------  PRIMARY KEY AND AUTO INCREMENT --------*/
alter table owners add column ownerid int primary key auto_increment;
alter table owners modify column ownerid int auto_increment first;
desc owners;-- prescurtarea de la describe

select * from owners;
insert into owners (firstName, lastName, dateOfBirth, age) values ('Anton', 'Pann', '1823-04-17', 95);
insert into owners (firstName, lastName, dateOfBirth, age) values ('Anton', 'Pann', '1823-04-17', 95);

/* ------  FOREIGN KEY AND AUTO INCREMENT -----*/
create table pets (
petid int not null auto_increment,
race varchar(45) not null,
dateOfBirth date not null,
ownerid int not null,
primary key (petid),
constraint fk_pets_owners foreign key (ownerid) references owners(ownerid)
)

select * from owners;
select * from pets;
insert into pets (race, dateOfBirth, ownerid)
values('European', '2020-02-15', 14);
insert into pets (race, dateOfBirth, ownerid)
values('bulldog', '2021-05-17', 11), ('Husky', '2021-11-28',2),('Husky','2021-11-05', 2);
delete from owners where ownerid = 13;
delete from pets where ownerid = 2;

/*------     JOINS   ------*/
select * from owners;
select * from pets;
select * from owners cross join pets;
select * from owners inner join pets on owners.ownerid = pets.ownerid;
select * from owners left join pets on owners.ownerid = pets.ownerid;
select * from owners left join pets on owners.ownerid = pets.ownerid where pets.ownerid is null;
select * from owners left join pets on owners.ownerid = pets.ownerid where pets.ownerid is NOT null;-- datele sunt identice cu inner join

-- Instructiuni echivalente
select * from owners right join pets on owners.ownerid = pets.ownerid;
select * from owners left join pets on owners.ownerid = pets.ownerid;

select * from owners right join pets on owners.ownerid = pets.ownerid where owners.ownerid is null;
select * from owners right join pets on owners.ownerid = pets.ownerid where owners.ownerid is not null;

/*-----   SQL EXTRAS   ------*/
select * from owners;
select * from owners order by dateOfBirth;-- sortarea se va face by default, adica ascendent
select * from owners order by dateOfBirth desc;-- desc aici inseamna descending si nu describe
select * from owners order by age desc limit 3;
select max(age) from owners;-- aici nu ne afiseaza proprietarul, ci doar varsta

/*---- ALIAS -----*/
select o.ownerid,firstName, lastName, count(petid)
from owners o inner join pets p on o.ownerid = p.ownerid
group by o.ownerid, firstName, lastName
having count(petid)>1;



select o.ownerid, firstName, lastName, race, o.dateOfBirth owner, p.dateOfBirth pet
from owners o inner join pets p on o.ownerid = p.ownerid;





