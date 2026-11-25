SELECT Name, Color, ListPrice
FROM Production.Product
WHERE Color = 'Red';

SELECT Name, ListPrice
FROM Production.Product
WHERE ListPrice > 3000;

SELECT Name, Color
FROM Production.Product
WHERE Color IN ('Red', 'Blue', 'Black');

SELECT Name, ProductNumber
FROM Production.Product
WHERE Name LIKE 'Road%';


