INSERT INTO PesananHeader (PelangganID, StatusPesanan)
VALUES (1, 'Baru');

PRINT 'Data Pesanan Budi:';
SELECT * FROM PesananHeader WHERE PelangganID = 7;
GO

PRINT 'Mencoba menghapus Budi...';
BEGIN TRANSACTION;

DELETE FROM Pelanggan
WHERE PelangganID = 7;

ROLLBACK TRANSACTION;

PRINT 'Data Pelanggan:';
SELECT * FROM Pelanggan;

