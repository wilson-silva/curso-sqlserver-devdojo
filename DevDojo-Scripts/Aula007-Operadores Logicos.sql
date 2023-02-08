/*
    ALL (SUBQUERY)
    AND
    OR
    SOME | ANY (SUBQUERY)
    BETWEEN
    EXISTS (SUBQUERY)
    IN | NOT IN
    LIKE | NOT LIKE
*/

SELECT * FROM Person.Person
 WHERE BusinessEntityID IN (1, 2, 3, 4, 659, 580, 900, 4500);

SELECT * FROM Person.Person
 WHERE FirstName IN ('Ken', 'Gigi', 'Aaron');

SELECT TOP 1000 * FROM Person.Person
 WHERE FirstName NOT IN ('Ken', 'Gigi', 'Aaron', 'A.')
ORDER BY FirstName;

SELECT TOP 100 * FROM Person.Person
 WHERE BusinessEntityID > 150
  AND FirstName <> 'Lane'
  AND FirstName <> 'Aaron'
ORDER BY FirstName;

SELECT TOP 100 * FROM Person.Person
 WHERE BusinessEntityID > 150
  AND FirstName = 'Aaron'
  AND MiddleName <> 'G'
ORDER BY FirstName;

SELECT TOP 200 * FROM Person.Person
 WHERE BusinessEntityID > 150
  AND (MiddleName = 'Devdojo' OR MiddleName = 'G' OR LastName = 'Boladao')
ORDER BY FirstName;

SELECT * FROM Person.Person
--WHERE BusinessEntityID > 600 AND BusinessEntityID < 800;
WHERE  BusinessEntityID BETWEEN 1 AND 800
  AND (MiddleName = 'Devdojo' OR MiddleName = 'G' OR LastName = 'Boladao');

SELECT TOP 500 * FROM Person.Person
--WHERE FirstName LIKE 'G%'
--WHERE FirstName LIKE 'G___' 
--WHERE FirstName LIKE 'G__a'
WHERE FirstName LIKE '___a';

SELECT TOP 500 * FROM Person.Person
WHERE FirstName LIKE '[ABCDEFG]___a' 
ORDER BY FirstName;

SELECT TOP 500 * FROM Person.Person
WHERE FirstName NOT LIKE '[ABCDEFG]___a' 
ORDER BY FirstName;

SELECT TOP 500 * FROM Person.Person
WHERE FirstName LIKE '[^ABCDEFG]__a' --negacao ^
ORDER BY FirstName;
