CREATE DATABASE statdept; /* we created database using create command and this is comment */
CREATE DATABASE statdept2; 
DROP DATABASE statdept2; /* we drop the database created in line 2 */
CREATE TABLE scholarship(
Roll_No INT PRIMARY key,
Name_ varchar(50),
gender varchar(2),
category varchar(5));
INSERT INTO scholarship
(Roll_No, Name_, gender, category)
VALUES 
("2327","RatneshDADA","M","OPEN"),
("2328","Pratikbhau","M","OBC"),
("2329","Gullu","F","ST"),
("2330","gandu","M","SEBC"),
("2331","pandu","F","NT"),
("2332","andy","M","KBC");
SELECT * FROM scholarship /* to view the data */
WHERE Roll_No > 2328; /* to check the roll no grater than 2328*/
/* sorting the data */
SELECT *
FROM scholarship
ORDER BY Roll_No DESC;
SELECT AVG(Roll_No) from scholarship;
/* group by */
SELECT gender, GROUP_CONCAT(Roll_No) AS Roll_Numbers /*GROUP_CONCAT(Roll_No) concatenates the roll numbers for each gender into a comma-separated list*/
FROM scholarship
GROUP BY gender;
/*using other operator 'BETWEEN' */
select * from scholarship where Roll_No between 2330 and 2332