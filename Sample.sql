--------------                     DBMS & MySQL             ---------------------


SHOW DATABASES; -- 👈 Show  All Database you have

CREATE DATABASE TEST; -- 👈 Create a new Database

DROP DATABASE TEST; -- 👈 Delete / Drop the Database that you have

USE LEARN;  -- 👈 Which Database you need to work with

SELECT DATABASE();  -- 👈 Which Database you Currently Using 
USE LEARN;

=> Create a table 
CREATE TABLE GAMES(
    name VARCHAR(50),
    ratings INT
);


SHOW TABLES; -- 👈 Dispaly list of all tables in a Database

SHOW COLUMNS FROM GAMES; -- 👈 Display the fields in that Table

DESC games; -- 👈 Describe the Structure of a Table

DROP TABLE games -- 👈 Drop / Delete Table


---=> Create table with Default Values 👇

CREATE TABLE GAMES(
    name VARCHAR(50) DEFAULT 'ANONOYMOUS',
    release_year INT DEFAULT 2025,
    rating Int 
);

DESC games; -- 👈 Describe the table Structure

DROP TABLE GAMES

CREATE TABLE MOVIES(
    title VARCHAR(50),
    release_year INT,
    rating DECIMAL,
    comment CHAR(10),
    comment_date DATE DEFAULT "2025-04-02",
    comment_time TIME DEFAULT "14:10:23"
);

SHOW COLUMNS FROM movies;

desc movies;

DROP TABLE movies;

CREATE TABLE GAMES(
    name VARCHAR(50),
    release_year INT,
    rating INT
);
DROP TABLE games;
DESC games;
INSERT INTO games(name,release_year,rating)
VALUES('GTA 6',2025,8),('GTA 5 ',2013,9),
('Batman:Arkham Knight',2015,7),('AKR 2',2018,2);

SELECT name,rating,release_year FROM games;

CREATE TABLE MOVIES(
     id INT PRIMARY KEY AUTO_INCREMENT, -- 👈 PRIMARY KEY / Unique
     title VARCHAR(50),
     genre VARCHAR(50),
     director VARCHAR(50),
     cast_count INT,
     languages INT,
     release_year INT,
     imdb_ratings DECIMAL(3,2),
     duration INT
);

INSERT INTO MOVIES (title,genre,director,cast_count,languages,release_year,imdb_ratings,duration)
VALUES("The Witcher",'Horror','Timur',5,5,5,5.0,120),
("Extraction",'Action','Sam Hargrave',5,5,5,5.0,120),
("Intersteller",'Sci-Fi','Nolan',5,5,5,8.9,140),
("John Wick",'Action','Sam Hargrave',5,5,5,8.3,140);

DROP TABLE movies;
SELECT * FROM movies WHERE genre = 'Action';
SELECT title FROM movies WHERE genre = 'Action';
SELECT title as Movies_Names,imdb_ratings as IMDB FROM movies where imdb_ratings > 8;

CREATE TABLE USER(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(50),
    password VARCHAR(50)
);

DROP TABLE user;
INSERT INTO USER(id,name,age,email,password)
VALUES
(1,'John',25,'john@gmail.com',"Pass@1223"),
(2,'Samuvel',21,'sam@gmail.com',"Pass@223"),
(3,'Alwin',23,'win@gmail.com',"Pass@213")

SELECT * FROM user;

---------------- UPDATE A USER 👇 ---

UPDATE USER 
SET age = 30 
WHERE password = 'Pass@213';

UPDATE USER 
SET password ='Saran@6112'
WHERE id =1;

UPDATE USER 
SET name='Saran'
WHERE password ='Saran@6112';

UPDATE USER 
SET email ='Saran@gmail.com'
WHERE name = 'Saran';

UPDATE user
SET age = 21
WHERE email ='Saran@gmail.com';

SELECT * FROM user WHERE age = 21;

--- Delete Coloum value ---
DELETE FROM user 
WHERE id = 1;

SELECT * FROM USER;


---------------- 👇 VARCHAR & CHAR ---------------

CREATE TABLE games(
    name VARCHAR(10),
    genre CHAR(10)
);

DROP TABLE games;

INSERT INTO games(name,genre) 
VALUES('game1','Action');

SELECT * FROM games;

------ Date and Time 👇 ----


CREATE TABLE events(
    event_name VARCHAR(255),
    event_date DATE,
    event_time TIME,
    event_datetime DATETIME
);

DESC events;

INSERT INTO events (event_name,event_date,event_time,event_datetime)
VALUES
("Metting","2024-03-02","14:30:00","2024-03-02 14:30:00"),
("Presentation","2024-03-03","9:30:00","2024-03-03 9:30:00"),
("Party","2024-03-04","10:30:00","2024-03-04 10:30:00");

SELECT * FROM EVENTS;

--------        Date and Time Functions 👇                ------------------ 

SELECT CURRENT_DATE (); ---- 👈 Current Date
SELECT CURRENT_TIME();  ---- 👈 Current Time
SELECT NOW(); ---- 👈 Current Date and Time 

CREATE TABLE comments(
    id INT PRIMARY KEY AUTO_INCREMENT,
    author VARCHAR(255),
    content VARCHAR(255),
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO comments(author,content) 
VALUES
("HuXn",'This is a great article'),
("Jordan",'I have aquestion about this topic.'),
("Charile",'Thanks for sharing this information');

SELECT * FROM comments;

UPDATE comments 
SET content="What's is going on here?"
WHERE id =1;

UPDATE comments 
SET content="Now I understand that concept"
WHERE id =2;

DROP TABLE user;


--------------------          👇 Functions              ----------------------

CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    age INT
);

INSERT INTO Users (first_name, last_name, email, password, age)
VALUES
('Jane', 'Doe', 'jane@example.com', 'password4', 10),
('Michael', 'Brown', 'michael@example.com', 'password5', 20),
('Emma', 'Johnson', 'emma1@example.com', 'password6', 35),
('William', 'Davis', 'william@example.com', 'password7', 30),
('Olivia', 'Martinez', 'olivia@example.com', 'password8', 35),
('James', 'Miller', 'james@example.com', 'password9', 35),
('Sophia', 'Garcia', 'sophia@example.com', 'password10', 40),
('Benjamin', 'Rodriguez', 'benjamin@example.com', 'password11', 42),
('Amelia', 'Lopez', 'amelia@example.com', 'password12', 45),
('Elijah', 'Lee', 'elijah@example.com', 'password13', 50),
('Charlotte', 'Harris', 'charlotte@example.com', 'password14', 60),
('David', 'Clark', 'david@example.com', 'password15', 70),
('Mia', 'Lewis', 'mia@example.com', 'password16', 80),
('Alexander', 'Allen', 'alexander@example.com', 'password17', 15),
('Isabella', 'Young', 'isabella@example.com', 'password18', 18),
('Ethan', 'Wright', 'ethan@example.com', 'password19', 22),
('Ava', 'King', 'ava@example.com', 'password20', 24),
('Noah', 'Scott', 'noah@example.com', 'password21', 21),
('Liam', 'Green', 'liam@example.com', 'password22', 34),
('Emma', 'Baker', 'emma2@example.com', 'password23', 31);

DROP Table users;

-------------- 👇 SubString Function ----------------

SELECT SUBSTRING("Hello World",5,7);
SELECT SUBSTRING("Saran",2);
SELECT SUBSTRING(first_name,2) from users;
SELECT SUBSTRING(first_name,2,6) from Users;
SELECT SUBSTRING(first_name,1,7) from Users;

------------------ 👇 Replace ----------------------

SELECT REPLACE('Hello World','Hello','Bye');
SELECT REPLACE("HuXn",'X','Z');
SELECT REPLACE(first_name,'Jane','Janeeeee') from users;
SELECT REPLACE(last_name,'Doe','Doeeeee') from users;

--------------- 👇 Reverse ------------
SELECT REVERSE("Hello World");
SELECT REVERSE ("saran");

SELECT REVERSE(first_name) from users;
SELECT REVERSE(password) from users;


------------- 👇 CHAR LENGTH  And LENGTH  -------------

Select CHAR_LENGTH("Hello World");
Select CHAR_LENGTH(first_name) from users;

Select LENGTH("Saran"); ---- 👈 Length function for Getting Length 

SELECT Length(last_name) from users;

------------ 👇Order By --------------------------

SELECT first_name from users ORDER BY first_name ASC;
SELECT first_name from users ORDER BY first_name DESC;
SELECT first_name from users  ORDER BY LENGTH(first_name);

-- ------------ 👇 Limit -------------
SELECT first_name from users LIMIT 8;
SELECT first_name from users ORDER BY LENGTH(first_name) LIMIT 5;

------------- 👇 LIKE ------------------ 
-- % : Matches Zero or more characters
-- _ : Matches exactly one character

SELECT * from users 
WHERE first_name LIKE '%j%';
SELECT * from users 
WHERE first_name LIKE '%mma%';

-------------- 👇 _ wildcard --------
SELECT * from users 
WHERE first_name LIKE '_mma';
SELECT * from users 
WHERE first_name LIKE '__exander';

SELECT count(*) from users;
SELECT MIN(age) from users;
SELECT MAX(age) from users;
SELECT AVG(age) from users;
SELECT SUM(age) from users;

---------- 👇 Group by --------

SELECT first_name,AVG(age) as Average_age 
FROM users
GROUP BY  first_name;

----------- 👇 Between AND  ----------

Select * from users
WHERE age BETWEEN 40 AND 60;

----------- 👇 IN -----------

Select * from users
WHERE age IN(20,25,30,35);
Select * from users
WHERE first_name IN('Jane','Emma','James','Olivia');

------------👇 CASE Statement -----------

Select first_name,age,
    CASE 
        WHEN age < 30 THEN 'Young' 
        WHEN age >=  30 AND age < 60 THEN 'Middle - Age'
        ELSE 'Senior' 
    END AS Group_age
From users;

--------------                   👇 Constrainst                  ---------------

----------👇 UNIQUE ------------------

CREATE TABLE series(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) UNIQUE,
    release_year INT,
    gener VARCHAR(255)
);
DESC series;

INSERT INTO series(title,release_year,gener)
VALUES('Stringer Things',2016,'Sci-Fi'),
('Game of Thrones',2011,'Fantasy'),
('Breaking Bad',2008,'Drama'),
('The Crown',2016,'Historical Drama');

SELECT * FROM series;

--------------👇 CHECK ----------------------------

CREATE TABLE employee(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_age INT CHECK (emp_age >= 18 AND emp_age <= 65),
    emp_salary DECIMAL(10,2) CHECK(emp_salary >=0)
);

INSERT INTO employee(emp_id,emp_name,emp_age,emp_salary)
VALUES(1,'Saran',21,50000.00);

SELECT * FROM employee;
drop Table employee;

---------------👇 CONSTRAINT -----------------------

CREATE TABLE employee(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_age INT ,
    emp_salary DECIMAL(10,2),
    CONSTRAINT chk_emp_age CHECK (emp_age >= 18 AND emp_age <= 65),
    CONSTRAINT chk_emp_salary CHECK (emp_salary>= 0)
);

INSERT INTO employee(emp_id,emp_name,emp_age,emp_salary)
VALUES(1,'Saran',21,50000.00);

SELECT * FROM employee;

----------------------            👇 ALTER Table          --------------------------

CREATE TABLE employee(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_age INT ,
    emp_salary DECIMAL(10,2),
    CONSTRAINT chk_emp_age CHECK (emp_age >= 18 AND emp_age <= 65),
    CONSTRAINT chk_emp_salary CHECK (emp_salary>= 0)
);
INSERT INTO employee(emp_id,emp_name,emp_age,emp_salary)
 VALUES(1,'Saran',21,50000.00);
SELECT * FROM employee;

----------- 👇DROP COLUMN   -------
ALTER TABLE employee
DROP COLUMN emp_salary;

----------  👇 Modify a Column -----------

ALTER TABLE employee 
MODIFY COLUMN emp_name VARCHAR(255);
DESC employee;

--------- 👇 Rename a Column -----------

ALTER TABLE employee
CHANGE COLUMN emp_name Full_name VARCHAR(255);

----------- 👇 ADD NEW Column ---------------

ALTER TABLE employee
ADD emp_salary DECIMAL(10,2) DEFAULT 100.00;
SELECT * FROM employee;

DROP Table employee;


--------------------           👇 Relationships            ----------------

--------------------   👇 ONE TO MANY Relationship  -----------------

CREATE TABLE engineer(
    eng_id INT PRIMARY KEY AUTO_INCREMENT,
    eng_name VARCHAR(255) NOT NULL,
    profession VARCHAR(255) NOT NULL,
    email VARCHAR(50)
);

CREATE TABLE task(
    task_id INT PRIMARY KEY AUTO_INCREMENT,
    task_name VARCHAR(255),
    task_description TEXT,
    eng_id INT,
    Foreign Key (eng_id) REFERENCES engineer(eng_id)
);

INSERT INTO engineer (eng_name, profession, email)
VALUES
    ('Alice Johnson', 'Full-Stack', 'aj@gmail.com'),
    ('Bob Smith', 'Back-End', 'bobsmith@gmail.com'),
    ('Charlie Brown', 'Front-End', 'charilebrown@gmail.com');

INSERT INTO task (task_name, task_description, eng_id)
VALUES
    ('Task 1', 'Design the UI in Figma', 1),
    ('Task 2', 'Build the Server In Bun', 2),
    ('Task 3', 'Code the UI in TailwindCSS', 1);
    -- ('Task 10','Testing',10); ❌

SELECT * FROM engineer;
SELECT * FROM task;
Drop table engineer;
drop Table task;

--------------------                👇 JOINS          ------------------------

------------ 👇 CROSS JOIN   ----------

SELECT * FROM engineer CROSS JOIN task;

SELECT * FROM engineer,task;

------------ 👇 INNER JOIN   ---------

SELECT * FROM engineer 
INNER JOIN task
ON engineer.eng_id = task.eng_id;

SELECT *  FROM engineer e
INNER JOIN task t
ON e.eng_id = t.eng_id;

SELECT engineer.eng_id,engineer.eng_name , task.task_name,task.task_description FROM engineer 
JOIN task
ON engineer.eng_id = task.eng_id;

-------------  👇 LEFT JOIN    ---------

SELECT * FROM engineer e 
LEFT JOIN task t 
ON e.eng_id = t.eng_id;

------------ 👇 RIGHT JOIN     ------------

SELECT * FROM engineer e
RIGHT JOIN task t 
ON e.eng_id = t.eng_id;

------------------------    👇 MANY TO MANY Relationship   -----------------

CREATE TABLE Movies(
    movie_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    year INT NOT NULL,
    director VARCHAR(100) NOT NULL,
    genre VARCHAR(100) NOT NULL
);

CREATE Table Person(
    person_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(255),
    gender VARCHAR(100),
    country VARCHAR(100)
);

CREATE Table comment(
    comment_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    comment_content TEXT NOT NULL,
    movie_id INT NOT NULL,
    person_id INT NOT NULL,
    Foreign Key (movie_id) REFERENCES Movies(movie_id),
    Foreign Key (person_id) REFERENCES Person(person_id)
);

INSERT INTO Movies(title, year, director, genre)
VALUES ('The Shawshank Redemption',1994,'Frank Darabont','Drama'),
('The Godfather',1972,'Francis Ford Coppola','Crime'),
('The Godfather: Part II',1974,'Francis Ford Coppola','Crime'),
('The Dark Knight',2008,'Christopher Nolan','Action'),
('12 Angry Men',1957,'Sidney Lumet','Drama'),
('Schindler''s List',1993,'Steven Spielberg','Drama'),
('Pulp Fiction',1994,'Quentin Tarantino','Crime'),
('The Lord of the Rings: The Return of the King',2003,'Peter Jackson','Action'),
('The Good, the Bad and the Ugly',1966,'Sergio Leone','Western'),
('Fight Club',1999,'David Fincher','Drama');

INSERT INTO PERSON(name,age,email,gender,country)
VALUES 
    ('Tom Hanks', 63, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Brad Pitt', 59, 'U7lZD@example.com', 'Male', 'United States'),
    ('Leonardo DiCaprio', 47, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Margot Robbie', 35, 'Vx5uZ@example.com', 'Female', 'United States'),
    ('Kate Winslet', 32, 'Vx5uZ@example.com', 'Female', 'United States'),
    ('Christian Bale', 45, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Heath Ledger', 49, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Gary Oldman', 51, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Tom Cruise', 47, 'Vx5uZ@example.com', 'Male', 'United States');

INSERT INTO Comment(movie_id, person_id, comment_content)
VALUES 
    (1,1,'I really like this movie.'),
    (2, 2, 'I really like this movie.'),
    (3, 3, 'I really like this movie.'),
    (4, 4, 'I really like this movie.'),
    (5, 5, 'I really like this movie.'),
    (6, 6, 'I really like this movie.'),
    (7, 7, 'I really like this movie.'),
    (8, 8, 'I really like this movie.'),
    (9, 9, 'I really like this movie.');

SELECT title,name,gender,comment_content FROM movies m
RIGHT JOIN person p 
ON m.movie_id = p.person_id RIGHT JOIN comment c
ON p.person_id = c.comment_id 
WHERE p.gender ='Male';

------------------------------ 👇 VIEWS       --------------------------------

CREATE Table employees(
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees (id, first_name, last_name, department, salary)
VALUES
    (1, 'John', 'Doe', 'IT', 50000.00),
    (2, 'Jane', 'Smith', 'HR', 60000.00),
    (3, 'Alice', 'Johnson', 'Finance', 70000.00);

----------- 👇 Create view ----
SELECT id,CONCAT(first_name,' ',last_name) AS full_name FROM employees;

CREATE VIEW employee_names AS
SELECT id, CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;

SELECT * FROM employee_names;

--         👇Update the view (recreate it)
--          Create a view if didn't exists already, or replace it with this new one.

CREATE OR REPLACE VIEW employee_names AS
SELECT id, CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE department = 'IT';

SELECT * FROM employee_names;

-----------  👇  Delete the view -------------
DROP VIEW employee_names;


SELECT * FROM users;
DELETE FROM users WHERE email ='sarank@gmail.com';

-------------------------------                👇 INDEX                --------------------------------
SHOW INDEX from users; -- 👈 Show all Index in your Table
CREATE INDEX age_index on users(age); -- 👈 Creating Index 

ALTER Table users DROP INDEX age_index; -- 👈 Drop the Index 

ALTER Table users ADD INDEX (password); -- Another way of Creating or Add Index 