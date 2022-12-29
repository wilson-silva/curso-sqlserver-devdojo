/* 
    SQL - STRUCTURED QUERY LANGUAGE - LINGUAGEM DE CONSULTA ESTRUTURADA
    T-SQL - TRANSACT SQL

    SELECT  = SELECIONE
    * TUDO (TODAS_AS_COLUNAS)

    FROM = A PARTIR DE/VINDO DE
    Nome_da_tabela
    
    WHERE = ONDE (Filtro)
        AND = E
*/

SELECT  BusinessEntityID, 
        PersonType,
        Title,
        FirstName,
        MiddleName,
        LastName,
        ModifiedDate -- ultima coluna sem virgula

  FROM Person.Person 
 WHERE FirstName = 'Ken'
   AND MiddleName = 'LRRGRG'


SELECT TOP 1000 
       * 
    FROM Person.Person
