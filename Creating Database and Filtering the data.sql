Create Database Employee;
CREATE TABLE Employee_Data (
    employeeid INT,
    Station_name VARCHAR(255),
    Manager_id VARCHAR(255),
    Empname VARCHAR(255),
    Salary INT);
INSERT INTO Employee_Data 
(employeeid, Station_name, Manager_id, Empname, Salary)
VALUES 
(21, 'MURBAD', '05', 'Annabelle', '15000'),
(22, 'THANE', '06', 'MANSI', '9000'),
(23, 'MUMBAI', '07', 'MAYURI', '20000'),
(24, 'VASHIND', '08', 'Anton', '10000'),
(25, 'VARP', '09', 'BHARTI', '21000');
/* to view the table*/
SELECT * FROM Employee_Data;

/*a) Employeeid with Salary in the Range of 9000 and 15000: */
SELECT *
FROM Employee_Data
WHERE salary BETWEEN 9000 AND 15000;

/*b) Employees with Names Starting with Two Characters, Followed by “n”, and Ending with Any Sequence:
The double underscore (__) represents any two characters.
The n after the double underscore ensures that the name contains an “n”.
The % at the end allows for any sequence of characters after the “n”.*/

SELECT *
FROM Employee_Data
WHERE Empname LIKE '__n%';

/*c) Maximum, Minimum, and Average Salary:*/
SELECT MAX(Salary) AS max_salary,
       MIN(Salary) AS min_salary,
       AVG(Salary) AS avg_salary
FROM Employee_Data;




