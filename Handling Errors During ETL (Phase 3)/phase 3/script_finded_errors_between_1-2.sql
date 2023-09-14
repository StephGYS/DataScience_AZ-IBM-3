USE DSTRAINING
GO



SELECT *
FROM [RAW_FakeNamesCanada]
WHERE ISNUMERIC([BALANCE]) <> 1 --10 rows DE BALANCE QUI NE SONT PAS DES NUMERIQUES
 
SELECT *
FROM [RAW_FakeNamesCanada]
WHERE LEN([ZipCode]) > 7  --2 rows DE ZIPCODE QUI SONT > A 7 CARACTERES

SELECT *
FROM [RAW_FakeNamesCanada]
WHERE ISDATE([Birthday]) <> 1 -- les rows de Birthday qui ne sont pas des dates.

       /* les mauvaises observations */
SELECT * 
FROM [RAW_FakeNamesCanada]
WHERE ISNUMERIC([BALANCE]) = 1
AND LEN([ZipCode]) > 7
AND ISDATE([Birthday]) <> 1