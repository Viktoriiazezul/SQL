--Создать таблицу employees

--Наполнить таблицу employee 70 строками.


create table employees_4(
id serial primary key,
employee_name Varchar(50) not null
);

select * from employees_4;

insert into employees_4(employee_name)
values ('student_1'),
       ('student_2'),
       ('student_3'),
       ('student_4'),
       ('student_5'),
       ('student_6'),
       ('student_7'),
       ('student_8'),
       ('student_9'),
       ('student_10'),
       ('student_11'),
       ('student_12'),
       ('student_13'),
       ('student_14'),
       ('student_15'),
       ('student_16'),
       ('student_17'),
       ('student_18'),
       ('student_19'),
       ('student_20'),
       ('student_21'),
       ('student_22'),
       ('student_23'),
       ('student_24'),
       ('student_25'),
       ('student_26'),
       ('student_27'),
       ('student_28'),
       ('student_29'),
       ('student_30'),
       ('student_31'),
       ('student_32'),
       ('student_33'),
       ('student_34'),
       ('student_35'),
       ('student_36'),
       ('student_37'),
       ('student_38'),
       ('student_39'),
       ('student_40'),
       ('student_41'),
       ('student_42'),
       ('student_43'),
       ('student_44'),
       ('student_45'),
       ('student_46'),
       ('student_47'),
       ('student_48'),
       ('student_49'),
       ('student_50'),
       ('student_51'),
       ('student_52'),
       ('student_53'),
       ('student_54'),
       ('student_55'),
       ('student_56'),
       ('student_57'),
       ('student_58'),
       ('student_59'),
       ('student_60'),
       ('student_61'),
       ('student_62'),
       ('student_63'),
       ('student_64'),
       ('student_65'),
       ('student_66'),
       ('student_67'),
       ('student_68'),
       ('student_69'),
       ('student_70');
      
--Создать таблицу salary      
--Наполнить таблицу salary 15 строками:

create table salary_4(
id serial primary key,
monthly_salary Int not null
);
            
select * from salary_4;
      
insert into salary_4(monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);


--Создать таблицу employee_salary
--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
      
create table employee_salary(
id serial primary key,
id_employee int unique not null,
id_salary int not null
);
      
select * from employee_salary;     
 
 insert into employee_salary(id_employee, id_salary)
values (3,7),
       (1,4),
       (5,9),
       (40,13),
       (23,4),
       (11,2),
       (52,10),
       (15,13),
       (26,4),
       (16,1),
       (33,7),
       (2,15),
       (4,7),
       (6,9),
       (7,4),
       (8,5),
       (9,12),
       (10,1),
       (12,6),
       (13,8),
       (14,12),
       (17,5),
       (18,15),
       (19,7),
       (20,13),
       (21,5),
       (22,7),
       (24,11),
       (25,15),
       (27,13),
       (28,14),
       (29,8),
       (30,6),
       (71,13),
       (75,4),
       (72,7),
       (73,1),
       (74,15),
       (78,2),
       (76,9),
       (77,13),
       (79,14),
       (80,4);

      
--Создать таблицу roles     
create table roles_4(
id serial primary key,
role_name int unique not null
);      

select * from roles_4;

--Поменять тип столба role_name с int на varchar(30)

alter table roles_4 
alter column role_name type varchar (30);

--Наполнить таблицу roles 20 строками

insert into roles_4(role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');
       
--Создать таблицу roles_employee
      
create table roles_employee(
id serial primary key,
employee_id int unique not null,
role_id int not null,
foreign key (role_id)
   references roles_4(id),
foreign key (employee_id)
   references employees_4(id));
   
 select * from roles_employee;

--Наполнить таблицу roles_employee 40 строками

insert into roles_employee(employee_id, role_id)
values (7,2),
       (20,4),
       (3,9),
       (5,13),
       (23,4),
       (11,2),
       (10,9),
       (22,13),
       (21,3),
       (34,4),
       (6,7),
       (1,1),
       (2,2),
       (69,3),
       (4,4),
       (68,5),
       (67,6),
       (66,7),
       (8,18),
       (9,9),
       (65,10),
       (64,11),
       (12,12),
       (13,13),
       (14,14),
       (63,15),
       (15,16),
       (17,18),
       (19,20),
       (60,19),
       (59,18),
       (24,17),
       (26,16),
       (28,15),
       (30,14),
       (32,13),
       (55,12),
       (36,11),
       (38,10),
       (40,3);
      
truncate table roles_employee restart identity cascade

select * from roles_employee;
         