


--1. Academy databazasını yaradın - 2 bal

create database Academy

use Academy

--2. Groups(İd,Name) ve Students(İd,Name,Surname,Groupİd) table-ları yaradın(one-to-many), təkrar qrup adı əlavə etmək olmasın - 5 bal

create table Groups
(

  Id int identity constraint PK_Grp_Id primary key,
  Name nvarchar(100)
)

create table Students
(

  Id int identity constraint PK_Std_Id primary key,
  Name nvarchar(100),
  SurName nvarchar(100)
)



alter table Students add GroupId int foreign key references Groups(Id)


--3. Students table-na Grade (int) kalonunu əlavə etmək - 3 bal

alter table Students add Grade int

--4. Groups table-na 3 data(P228,P124,P221), Students table-na 4 data əlavə edin(1 tələbə P221 qrupna, 3 tələbə 

--P228   qrupuna aid olsun) - 5 bal

insert into Groups
values
('p124'),
('p221'),
('p228')


insert into Students
values
('samir','guliyev'),
('sahil','guliyev'),
('fuad','guliyev'),
('fazil','guliyev')








--5. 

--P228  qrupuna aid olan tələbələrin siyahisini gosterin - 10 bal


select * from Students

--6. Her qrupda neçə tələbə olduğunu göstərən siyahı çıxarmaq - 15 bal



--7. View yaratmaq - tələbə adını, qrupun adını-qrup kimi , tələbə soyadını, tələbənin balını göstərməli - 20 bal



--8. Procedure yazmalı - göndərilən baldan yüksək bal alan tələbələrin siyahısını göstərməlidir - 20 bal




--9. Funksiya yazmalı - göndərilən qrup adina uyğun neçə tələbə olduğunu göstərməlidir - 20 bal


