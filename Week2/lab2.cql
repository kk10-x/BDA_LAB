CREATE KEYSPACE Employee WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
DESCRIBE KEYSPACES;
create TABLE Employee_info( Emp_id int PRIMARY KEY, Emp_Name text, Designation text, DateofJoining timestamp, Salary int, Dept_Name text );
BEGIN BATCH
INSERT INTO employee_info ( Emp_id, Emp_Name, Designation, dateofjoining , salary , dept_name ) VALUES ( 120, 'Khrithik', 'CEO', '2021-03-19', 3500000,'Captain')
INSERT INTO employee_info ( Emp_id, Emp_Name, Designation, dateofjoining , salary , dept_name ) VALUES ( 121, 'Aravindh', 'CIO', '2021-05-28', 3900000,'Vice Captain')
INSERT INTO employee_info ( Emp_id, Emp_Name, Designation, dateofjoining , salary , dept_name ) VALUES ( 122, 'Kenish', 'CFO', '2021-05-08', 390000,'Finance')
INSERT INTO employee_info ( Emp_id, Emp_Name, Designation, dateofjoining , salary , dept_name ) VALUES ( 123, 'Krishna', 'COO', '2021-08-10', 690000,'Operations')
APPLY BATCH;

SELECT * FROM employee_info ;
emp_id | dateofjoining                   | dept_name    | designation | emp_name | salary
--------+---------------------------------+--------------+-------------+----------+---------
    120 | 2021-03-18 18:30:00.000000+0000 |      Captain |         CEO | Khrithik | 3500000
    123 | 2021-08-09 18:30:00.000000+0000 |   Operations |         COO |  Krishna |  690000
    122 | 2021-05-07 18:30:00.000000+0000 |      Finance |         CFO |   Kenish |  390000
    121 | 2021-05-27 18:30:00.000000+0000 | Vice Captain |         CIO | Aravindh | 3900000

UPDATE employee_info SET emp_name = 'SidzZy', dept_name = 'Founder' WHERE emp_id = 121;
ALTER TABLE employee_info ADD projects text;
UPDATE employee_info SET projects = 'ValoRANT' WHERE emp_id = 120;
UPDATE employee_info SET projects = 'ConnectX' WHERE emp_id = 121;
UPDATE employee_info SET projects = 'Gymning' WHERE emp_id = 122;
UPDATE employee_info SET projects = 'Acad.me' WHERE emp_id = 121;
UPDATE employee_info SET projects = 'ConnectX' WHERE emp_id = 123;
SELECT * FROM employee_info;

emp_id | dateofjoining                   | dept_name  | designation | emp_name | projects | salary
--------+---------------------------------+------------+-------------+----------+----------+---------
    120 | 2021-03-18 18:30:00.000000+0000 |    Captain |         CEO | Khrithik | ValoRANT | 3500000
    123 | 2021-08-09 18:30:00.000000+0000 | Operations |         COO |  Krishna | ConnectX |  690000
    122 | 2021-05-07 18:30:00.000000+0000 |    Finance |         CFO |   Kenish |  Gymning |  390000
    121 | 2021-05-27 18:30:00.000000+0000 |    Founder |         CIO |   SidzZy |  Acad.me | 3900000