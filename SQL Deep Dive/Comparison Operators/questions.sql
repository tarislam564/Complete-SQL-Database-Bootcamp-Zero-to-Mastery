-- How many female customers do we have from the state of Oregon (OR)?
--106
SELECT
COUNT(firstname)
FROM customers
WHERE gender = 'F' AND state = 'OR'
-- Who over the age of 44 has an income of 100 000 or more? (excluding 44)
--2497
SELECT
count(income)
FROM customers
WHERE age > 44 AND income >= 100000
-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)
--2362
SELECT
count(income)
FROM customers
WHERE age BETWEEN 30 AND 50 AND income < 50000
-- What is the average income between the ages of 20 and 50? (Excluding 20 and 50)
--59361.925908612832
SELECT
AVG(income)
FROM customers
WHERE age BETWEEN 20 AND 50
