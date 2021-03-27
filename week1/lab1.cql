
CREATE KEYSPACE Employee WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
DESC KEYSPACES;
USE employee ;


CREATE TABLE employee_info ( 
emp_id int PRIMARY KEY, 
emp_name text, 
designation text, 
DateOfJoining timestamp, 
salary int, 
dept_name text 
);

DESC TABLE employee_info ;


BEGIN BATCH             
INSERT INTO employee_info (emp_id , emp_name , designation , dateofjoining , salary , dept_name )
VALUES ( 120, 'Khrithik', 'CEO', '2020-04-01', 3500000, 'Games')
INSERT INTO employee_info (emp_id , emp_name , designation , dateofjoining , salary , dept_name )
VALUES ( 121, 'Karthik', 'CTO', '2020-06-16', 6500000, 'Media')
INSERT INTO employee_info (emp_id , emp_name , designation , dateofjoining , salary , dept_name )
VALUES ( 122, 'Krishna', 'COM', '2020-06-16', 6900000, 'Marketing')
INSERT INTO employee_info (emp_id , emp_name , designation , dateofjoining , salary , dept_name )
VALUES ( 123, 'Kenish', 'AMB', '2020-06-16', 4200000, 'Fashion')
APPLY BATCH ;

SELECT * FROM employee_info ;

-- emp_id | dateofjoining                   | dept_name | designation | emp_name | salary
----------+---------------------------------+-----------+-------------+----------+---------
--    120 | 2020-03-31 18:30:00.000000+0000 |     Games |         CEO | Khrithik | 3500000
--    123 | 2020-06-15 18:30:00.000000+0000 |   Fashion |         AMB |   Kenish | 4200000
--    122 | 2020-06-15 18:30:00.000000+0000 | Marketing |         COM |  Krishna | 6900000
--    121 | 2020-06-15 18:30:00.000000+0000 |     Media |         CTO |  Karthik | 6500000



UPDATE employee_info SET emp_name = 'Karthikutty' , dept_name = 'Founder' WHERE emp_id = 121;
SELECT * FROM employee_info ;

-- emp_id | dateofjoining                   | dept_name | designation | emp_name | salary
----------+---------------------------------+-----------+-------------+----------+---------
--    120 | 2020-03-31 18:30:00.000000+0000 |     Games |         CEO | Khrithik | 3500000
--    123 | 2020-06-15 18:30:00.000000+0000 |   Fashion |         AMB |   Kenish | 4200000
--    122 | 2020-06-15 18:30:00.000000+0000 | Marketing |         COM |  Krishna | 6900000
--    121 | 2020-06-15 18:30:00.000000+0000 |     Media |         CTO |  Karthik | 6500000



ALTER TABLE employee_info ADD project_name text;
SELECT * FROM employee_info  ;

-- emp_id | dateofjoining                   | dept_name | designation | emp_name | salary
----------+---------------------------------+-----------+-------------+----------+---------
--    120 | 2020-03-31 18:30:00.000000+0000 |     Games |         CEO | Khrithik | 3500000
--    123 | 2020-06-15 18:30:00.000000+0000 |   Fashion |         AMB |   Kenish | 4200000
--    122 | 2020-06-15 18:30:00.000000+0000 | Marketing |         COM |  Krishna | 6900000
--    121 | 2020-06-15 18:30:00.000000+0000 |     Media |         CTO |  Karthik | 6500000



UPDATE employee_info SET project_name = 'Valorant' WHERE emp_id = 120 ;
UPDATE employee_info SET project_name = 'McD' WHERE emp_id = 121 ;
UPDATE employee_info SET project_name = 'Otaku' WHERE emp_id = 122 ;
UPDATE employee_info SET project_name = 'Gym' WHERE emp_id = 123 ;
SELECT * FROM employee_info  ;

-- emp_id | dateofjoining                   | dept_name | designation | emp_name | salary
----------+---------------------------------+-----------+-------------+----------+---------
--    120 | 2020-03-31 18:30:00.000000+0000 |     Games |         CEO | Khrithik | 3500000
--    123 | 2020-06-15 18:30:00.000000+0000 |   Fashion |         AMB |   Kenish | 4200000
--    122 | 2020-06-15 18:30:00.000000+0000 | Marketing |         COM |  Krishna | 6900000
--    121 | 2020-06-15 18:30:00.000000+0000 |     Media |         CTO |  Karthik | 6500000


