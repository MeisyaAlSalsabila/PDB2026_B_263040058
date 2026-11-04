PRINT 'Uji Coba Error 1 (UNIQUE):';
INSERT INTO Pelanggan (NamaDepan, Email)
VALUES ('Budi', 'budi.santoso@email.com');
GO

Uji Coba Error 1 (UNIQUE):
Msg 2627, Level 14, State 1, Line 2
Violation of UNIQUE KEY constraint 'UQ__Pelangga__A9D10534DE11BCF7'. Cannot insert duplicate key in object 'dbo.Pelanggan'. The duplicate key value is (budi.santoso@email.com).
The statement has been terminated.

PRINT 'Uji Coba Error 2 (FOREIGN KEY):';
INSERT INTO Produk (SKU, NamaProduk, Harga, Stok, KategoriID)
VALUES ('XXX-001', 'Produk Aneh', 1000, 10, 99);
GO

Uji Coba Error 2 (FOREIGN KEY):
Msg 547, Level 16, State 0, Line 12
The INSERT statement conflicted with the FOREIGN KEY constraint "FK__Produk__Kategori__6477ECF3". The conflict occurred in database "TokoRetailDB", table "dbo.KategoriProduk", column 'KategoriID'.
The statement has been terminated.

PRINT 'Uji Coba Error 3 (CHECK):';
INSERT INTO Produk (SKU, NamaProduk, Harga, Stok, KategoriID)
VALUES ('NGT-001', 'Produk Minus', -50000, 10, 1);
GO

Uji Coba Error 3 (CHECK):
Msg 2627, Level 14, State 1, Line 22
Violation of UNIQUE KEY constraint 'UQ__Produk__CA1ECF0D9EF14831'. Cannot insert duplicate key in object 'dbo.Produk'. The duplicate key value is (NGT-001).
The statement has been terminated.

