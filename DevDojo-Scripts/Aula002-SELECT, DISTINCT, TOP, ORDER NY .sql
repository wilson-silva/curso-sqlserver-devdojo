/* 
    SQL - STRUCTURED QUERY LANGUAGE - LINGUAGEM DE CONSULTA ESTRUTURADA
    T-SQL - TRANSACT SQL

    SELECT  = SELECIONE

    * = TUDO (TODAS_AS_COLUNAS)

    FROM = A PARTIR DE/VINDO DE <Nome_da_tabela>

    WHERE = ONDE (Filtro)
    
    AND = E
   
*/

SELECT * FROM Person.Person
WHERE FirstName = 'Ken';

-- ------------------------------------------------------------------------------

SELECT  BusinessEntityID, 
        PersonType,
        Title,
        FirstName,
        MiddleName,
        LastName,
        ModifiedDate -- ultima coluna sem virgula

FROM Person.Person 
WHERE FirstName = 'Ken'
AND MiddleName = 'LRRGRG';

-- ------------------------------------------------------------------------------
-- ORDENACAO DESC = DECRESCENTE
-- ORDENACAO ASC = ASCENDENTE 
-- TOP = TRARA OS REGISTROS INDICADO NO NUMERO
-- AS - ALIASES = APELIDO DA COLUNA

SELECT --TOP 1000 
      BusinessEntityID AS [ID PESSOA],
      PersonType       AS [TIP PESSOA],
      Title            AS [TITULO],
      FirstName        AS [PRIMEIRO NOME],
      MiddleName       AS [NOME DO MEIO],
      LastName         AS [ULTIMO NOME]
FROM Person.Person
WHERE Title = 'Mr.'  -- WHERE NAO CONHECE O NOME DO APELIDO DA COLUNA
ORDER BY [PRIMEIRO NOME] , 
         [ULTIMO NOME] DESC;

-- ------------------------------------------------------------------------------
-- DISTINCT = REMOVE DUPLICADOS

SELECT 
    -- DISTINCT
    -- TOP 1000 
      FirstName,          
      MiddleName,      
      LastName        
FROM Person.Person
WHERE Title = 'Mr.'  
AND MiddleName = 'M.'
ORDER BY FirstName, 
         MiddleName

-- ------------------------------------------------------------------------------