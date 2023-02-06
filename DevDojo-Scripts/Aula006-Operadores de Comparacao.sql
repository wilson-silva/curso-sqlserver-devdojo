/*
    OPERADORES DE COMPARACAO
    São padrões ISO podendo ser usados em outras SGBDs
    =  (igual a )
    <> (diferente de)
    <  (menor que)
    >  (maior que)
    >= (maior ou igual a )
    >= (menor ou igual a )
    
    != (deferente de )   [Não é padrão ISO]
    !< (não é menor que) [Não é padrão ISO]
    !> (não é maior que) [Não é padrão ISO]
   
*/

SELECT * FROM Person.Person
WHERE FirstName = 'Gigi';

SELECT * FROM Person.Person
WHERE FirstName <> 'Gigi';

SELECT TOP 100 * FROM Person.Person
WHERE BusinessEntityID > 10;

SELECT TOP 100 * FROM Person.Person
WHERE BusinessEntityID < 10;

SELECT TOP 100 * FROM Person.Person
WHERE BusinessEntityID <= 10;

SELECT TOP 100 * FROM Person.Person
WHERE BusinessEntityID >= 10;

SELECT TOP 100 * FROM Person.Person
WHERE BusinessEntityID != 10;

SELECT TOP 100 * FROM Person.Person
WHERE BusinessEntityID !< 10;

SELECT TOP 100 * FROM Person.Person
WHERE BusinessEntityID !> 10;