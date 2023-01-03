SELECT TOP 10 * 
FROM Person.Person
ORDER BY FirstName, -- DEFAULT ASC
         MiddleName DESC,
         LastName

-- ------------------------------------------------------------------------------
SELECT  BusinessEntityID,
        PersonType,
        Title,
        FirstName,
        MiddleName,
        LastName,
        ModifiedDate

FROM Person.Person
ORDER BY BusinessEntityID
OFFSET 50 ROWS -- IGNORE (PULAR) QUANTIDADE DE LINHAS
--ORDER BY 4,5,6 -- EVITAR AO MAXIMO, NAO E UMA BOA PRATICA
/*
ORDER BY FirstName, -- DEFAULT ASC
         MiddleName DESC,
         LastName
*/

-- ------------------------------------------------------------------------------
SELECT --TOP 100 
        BusinessEntityID,
        PersonType,
        Title,
        FirstName,
        MiddleName,
        LastName,
        ModifiedDate

FROM Person.Person
--WHERE MiddleName = 'N'
ORDER BY BusinessEntityID
OFFSET 50 ROWS 
FETCH NEXT 10 ROWS ONLY -- EXECUTE AS PROXIMAS N LINHAS SOMENTE

-- ------------------------------------------------------------------------------
SELECT  DISTINCT
        BusinessEntityID,
        --PersonType,
        --Title,
        FirstName,
        --MiddleName,
        LastName
        --ModifiedDate

FROM Person.Person
--WHERE MiddleName = 'N'
ORDER BY LastName
OFFSET 50 ROWS 
FETCH NEXT 10 ROWS ONLY -- EXECUTE AS PROXIMAS N LINHAS SOMENTE


