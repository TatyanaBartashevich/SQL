
/** 1. Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null**/

create table employees (
    id serial primary key,
    employee_name varchar(50) not null
);

/** 2. Наполнить таблицу employee 70 строками **/

insert into employees(employee_name)
values  ('Александр'),
        ('Сергей'),
        ('Елена'), 
        ('Татьяна'),
        ('Андрей'),
        ('Алексей'),
        ('Ольга'),
        ('Николай'),
        ('Наталья'), 
        ('Анна'),
        ('Иван'),
        ('Дмитрий'),
        ('Ирина'),
        ('Мария'),
        ('Михаил'),
        ('Светлана'),
        ('Екатерина'),
        ('Евгений'),
        ('Виктор'),
        ('Анастасия'),
        ('Юрий'), 
        ('Юлия'),
        ('Валентина'),
        ('Галина'),
        ('Людмила'),
        ('Василий'), 
        ('Игорь'),
        ('Анатолий'),
        ('Надежда'),
        ('Олег'), 
        ('Марина'),
        ('Павел'),
        ('Максим'),
        ('Александра'),
        ('Нина'),
        ('Виталий'),
        ('Валерий'),
        ('Виктория'),
        ('Любовь'),
        ('Роман'),
        ('Оксана'), 
        ('Денис'),
        ('Дарья'), 
        ('Константин'),
        ('Вячеслав'), 
        ('Вера'),
        ('Евгения'),
        ('Петр'),
        ('Антон'),
        ('Илья'),
        ('Владислав'),
        ('Лариса'),
        ('Лидия'),
        ('Ксения'),
        ('Вадим'),
        ('Наталия'),
        ('Никита'),
        ('Григорий'),
        ('Геннадий'),
        ('Тамара'),
        ('Алина'),
        ('Леонид'),
        ('Руслан'),
        ('Борис'),
        ('Елизавета'),
        ('Кристина'),
        ('Кирилл'),
        ('Артем'),
        ('Валерия'),
        ('Сергей');

/** 3. Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null**/

create table salary(
    id serial primary key,
    monthly_salary int not null
);

/** 4. Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500**/

insert into salary (monthly_salary)
values  (1000),
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
        (2400);

/** 5. Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null**/

create table employee_salary (
    id serial primary key,
    employee_id int not null unique,
    salary_id int not null
);

/** 6. Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id**/

insert into employee_salary (employee_id, salary_id)
values  (21, 1),
        (42, 15),
        (70, 2),
        (1, 14),
        (4, 3),
        (11, 13),
        (20, 10),
        (30, 11),
        (51, 4),
        (18, 6),
        (17, 5),
        (12, 8),
        (44, 7),
        (58, 10),
        (62, 11),
        (61, 9),
        (47, 12),
        (41, 14),
        (32, 13),
        (8, 1),
        (46, 3),
        (37, 4),
        (5, 6),
        (65, 9),
        (40, 8),
        (36, 12),
        (39, 7),
        (7, 4),
        (25, 5),
        (24, 2),
        (488, 10),
        (366, 3),
        (75, 4),
        (88, 5),
        (301, 6),
        (98, 5),
        (501, 4),
        (101, 3),
        (81, 2),
        (77, 1);

/** 7. Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique**/

create table roles (
    id serial primary key,
    role_name int not null unique
);

/** 8. Поменять тип столба role_name с int на varchar(30)**/

ALTER table roles
ALTER COLUMN role_name type varchar(30);

/** 9. Наполнить таблицу roles 20 строками:

id  role_name
1   Junior Python developer
2   Middle Python developer
3   Senior Python developer
4   Junior Java developer
5   Middle Java developer
6   Senior Java developer
7   Junior JavaScript developer
8   Middle JavaScript developer
9   Senior JavaScript developer
10  Junior Manual QA engineer
11  Middle Manual QA engineer
12  Senior Manual QA engineer
13  Project Manager
14  Designer
15  HR
16  CEO
17  Sales manager
18  Junior Automation QA engineer
19  Middle Automation QA engineer
20  Senior Automation QA engineer**/

insert into roles (role_name)
values  ('Junior_Python_developer'),
        ('Middle_Python_developer'),
        ('Senior_Python_developer'),
        ('Junior_Java_developer'),
        ('Middle_Java_developer'),
        ('Senior_Java_developer'),
        ('Junior_JavaScript_developer'),
        ('Middle_JavaScript_developer'),
        ('Senior_JavaScript_developer'),
        ('Junior_Manual_QA_engineer'),
        ('Middle_Manual_QA_engineer'),
        ('Senior_Manual_QA_engineer'),
        ('Project_Manager'),
        ('Designer'),
        ('HR'),
        ('CEO'),
        ('Sales_ manager'),
        ('Junior_Automation_QA_engineer'),
        ('Middle_Automation_QA_engineer'),
        ('Senior_Automation_QA_engineer');

/** 10. Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)**/

create table roles_employee(
    id serial primary key,
    employee_id int not null unique,
    role_id int not null,
	foreign key (employee_id) references employees(id),
	foreign key (role_id) references roles(id)
);

/** 10. Наполнить таблицу roles_employee 40 строками:

id  employee_id role_id
1   7           2
2   20          4
3   3           9
4   5           13
5   23          4
6   11          2
7   10          9
8   22          13
9   21          3
10  34          4
11  6           7 **/

insert into roles_employee
values  (1,7,2),
        (2,20,4),
        (3,3,9),
        (4,5,13),
        (5,23,4),
        (6,11,2),
        (7,10,9),
        (8,22,13),
        (9,21,3),
        (10,34,4),
        (11,6,4),
        (12,45,8),
        (13,41,15),
        (14,47,9),
        (15,37,7),
        (16,28,5),
        (17,24,7),
        (18,38,9),
        (19,19,12),
        (20,8,15),
        (21,44,1),
        (22,50,3),
        (23,9,5),
        (24,51,14),
        (25,13,12),
        (26,15,10),
        (27,14,9),
        (28,17,8),
        (29,52,5),
        (30,53,3),
        (31,25,1),
        (32,26,2),
        (33,58,4),
        (34,30,7),
        (35,70,9),
        (36,69,10),
        (37,68,11),
        (38,67,12),
        (39,55,13),
        (40,54,7);