/* imported table 1 name DATASET*/
SELECT * FROM DATASET
ORDER BY marks DESC;
/* finding the avg marks of male and female */
SELECT gender , AVG(marks) as
new_marks FROM DATASET
GROUP BY gender
/*  or using order by */
ORDER BY AVG(marks) desc;
/* imported table 2 name DATA2 
for joins - type of joins inner and outer 
inner joins - returns values that have matching values in both tables
*/
SELECT * 
FROM DATASET as a
INNER JOIN DATASET2 as b  /* returns common values of roll no from both tables*/
ON a.`Roll No` = b.`Roll No`;
/* outer joins - left joins= returns all records from the left table, and the
matched record from the right table */
/* we left joining tabele a to b so common elements of table a will in b and whole a also get */
SELECT * 
FROM DATASET AS a
LEFT JOIN DATASET2 AS b
ON a.`Roll No` = b.`Roll No`;
/* right join - returns all records from right table and matched records 
from the left table */
SELECT * 
FROM DATASET AS a
RIGHT JOIN DATASET2 AS b
ON a.`Roll No` = b.`Roll No`;
/* full join- returns all records when there is a match in either left or right table */
SELECT * 
FROM DATASET AS a
LEFT JOIN DATASET2 AS b
ON a.`Roll No` = b.`Roll No`
UNION
SELECT * 
FROM DATASET AS a
RIGHT JOIN DATASET2 AS b
ON a.`Roll No` = b.`Roll No`;
/* Natural Join - Natural join automatically joins tables based on columns with the same name. 
It matches rows where the values in all columns with the same name are equal. */
SELECT * FROM dataset AS a
NATURAL JOIN dataset2 AS b ;
/* set operations earlier we see Union which gives full dataset, now intersect as works as its name suggests*/
SELECT marks, gender
FROM dataset
INTERSECT
SELECT marks, gender
FROM dataset2;
/* except - not shows or excepts columns below the except command*/
SELECT marks, gender
FROM dataset
EXCEPT
SELECT marks, gender
FROM dataset2;





