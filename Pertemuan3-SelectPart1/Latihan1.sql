SELECT * 
FROM Production.Product;

SELECT NAME, ProductNumber, ListPrice
FROM Production.Product;

SELECT Name AS [Nama Barang], 
		ListPrice AS 'Harga Jual'
FROM Production.Product;

SELECT NAME, 
	ListPrice, 
	(listPrice * 1.1) AS 'Harga Baru'
FROM Production.Product;

SELECT Name +' ('+ ProductNumber + ') ' AS 'Product Lengkap'
FROM Production.Product;

