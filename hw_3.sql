SELECT id, employee_name
FROM public.employees_4;


--SQL HomeWork 2. Joins

--Подключится к 
--Host: 159.69.151.133
--Port: 5056
--DB: подключение к той таблице где делали DDL операции
--User: подключение к тем пользователем каким делали DDL операции
--Pass: 123
--Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте )

--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select e.employee_name, s.monthly_salary from employees_4 e
join employee_salary es on es.id_employee = e.id
join salary_4 s on es.id_salary = s.id; 

--2. Вывести всех работников у которых ЗП меньше 2000.
select e.employee_name, s.monthly_salary from employees_4 e
join employee_salary es on es.id_employee = e.id
join salary_4 s on es.id_salary = s.id
where monthly_salary < 2000 or monthly_salary = 2000; 

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select e.employee_name, s.monthly_salary from employees_4 e
join employee_salary es on es.id_employee = e.id
right join salary_4 s on es.id_salary = s.id
where employee_name is NULL; 

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select e.employee_name, s.monthly_salary from employees_4 e
join employee_salary es on es.id_employee = e.id
right join salary_4 s on es.id_salary = s.id
where monthly_salary < 2000 and  employee_name is NULL; 

--5. Найти всех работников кому не начислена ЗП.
select e.employee_name, s.monthly_salary from salary_4 s
join employee_salary es on es.id_salary = s.id
right join employees_4 e on es.id_employee = e.id
where monthly_salary is null;

--6. Вывести всех работников с названиями их должности.
select e.employee_name, r.role_name from roles_4 r
join roles_employee re on re.role_id = r.id
join employees_4 e on re.employee_id = e.id
order by employee_name asc;

--7. Вывести имена и должность только Java разработчиков.
select e.employee_name, r.role_name from roles_4 r
join roles_employee re on re.role_id = r.id
join employees_4 e on re.employee_id = e.id
where role_name like ('%Java%');

--8. Вывести имена и должность только Python разработчиков.
select e.employee_name, r.role_name from roles_4 r
join roles_employee re on re.role_id = r.id
join employees_4 e on re.employee_id = e.id
where role_name like ('%Python%');

--9. Вывести имена и должность всех QA инженеров.
select e.employee_name, r.role_name from roles_4 r
join roles_employee re on re.role_id = r.id
join employees_4 e on re.employee_id = e.id
where role_name like ('%QA engineer%');

--10. Вывести имена и должность ручных QA инженеров.
select e.employee_name, r.role_name from roles_4 r
join roles_employee re on re.role_id = r.id
join employees_4 e on re.employee_id = e.id
where role_name like ('%Manual QA engineer%');

--11. Вывести имена и должность автоматизаторов QA
select e.employee_name, r.role_name from roles_4 r
join roles_employee re on re.role_id = r.id
join employees_4 e on re.employee_id = e.id
where role_name like ('%Automation QA engineer%');

--12. Вывести имена и зарплаты Junior специалистов
select e.employee_name, s.monthly_salary, role_name from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
where role_name like ('%Junior%');

--13. Вывести имена и зарплаты Middle специалистов
select e.employee_name, s.monthly_salary, role_name from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
where role_name like ('%Middle%');

--14. Вывести имена и зарплаты Senior специалистов
select e.employee_name, s.monthly_salary, role_name from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
where role_name like ('%Senior%');

--15. Вывести зарплаты Java разработчиков
select r.role_name, s.monthly_salary from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
where role_name like ('%Java%');

--16. Вывести зарплаты Python разработчиков
select r.role_name, s.monthly_salary from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
where role_name like ('%Python%');

--17. Вывести имена и зарплаты Junior Python разработчиков
select e.employee_name, s.monthly_salary, role_name from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
where role_name like ('%Junior Python%');

--18. Вывести имена и зарплаты Middle JS разработчиков
select e.employee_name, s.monthly_salary, role_name from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
where role_name like ('%Middle JavaScript%');

--19. Вывести имена и зарплаты Senior Java разработчиков
select e.employee_name, s.monthly_salary, role_name from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
where role_name like ('%Senior Java%');

--20. Вывести зарплаты Junior QA инженеров
select s.monthly_salary from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
where role_name like ('%Junior% %QA%');

--21. Вывести среднюю зарплату всех Junior специалистов
select AVG(s.monthly_salary) from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
where role_name like ('%Junior%');

--22. Вывести сумму зарплат JS разработчиков
select SUM(s.monthly_salary) from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
where role_name like ('%JavaScript%');

--23. Вывести минимальную ЗП QA инженеров
select MIN(s.monthly_salary) from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
where role_name like ('%QA%');

--24. Вывести максимальную ЗП QA инженеров
select MAX(s.monthly_salary) from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
where role_name like ('%QA%');

--25. Вывести количество QA инженеров
select COUNT (*) from roles_4 r
join roles_employee re on re.role_id = r.id 
join employees_4 e on re.employee_id = e.id 
where role_name like '%QA%';

--26. Вывести количество Middle специалистов.
select COUNT (*) from roles_4 r
join roles_employee re on re.role_id = r.id 
join employees_4 e on re.employee_id = e.id 
where role_name like '%Middle%';

--27. Вывести количество разработчиков
select COUNT (*) from roles_4 r
join roles_employee re on re.role_id = r.id 
join employees_4 e on re.employee_id = e.id 
where role_name like '%developer%';

--28. Вывести фонд (сумму) зарплаты разработчиков.
select SUM(s.monthly_salary) from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
where role_name like ('%developer%');

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select e.employee_name, s.monthly_salary, role_name from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
order by (s.id);

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select e.employee_name, s.monthly_salary, role_name from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
where s.monthly_salary > 1700 and s.monthly_salary < 2300
order by (monthly_salary);

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select e.employee_name, s.monthly_salary, role_name from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
where s.monthly_salary < 2300
order by (monthly_salary);

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select e.employee_name, s.monthly_salary, role_name from employees_4 e
inner join roles_employee re on e.id = re.employee_id
inner join roles_4 r on re.role_id = r.id 
inner join employee_salary es on e.id = es.id_employee
inner join salary_4 s on s.id = es.id_salary
where s.monthly_salary in (1100, 1500, 2000)
order by (s.id);
