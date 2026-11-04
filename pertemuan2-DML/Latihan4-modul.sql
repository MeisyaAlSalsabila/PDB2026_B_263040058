PRINT 'Data Meisya SEBELUM Update:';
SELECT * FROM Pelanggan WHERE PelangganID = 4;

BEGIN TRANSACTION;

UPDATE Pelanggan
SET NoTelepon = '085566778899'
WHERE PelangganID = 4;

PRINT 'Data Meisya SETELAH Update (Belum di-COMMIT):';
SELECT * FROM Pelanggan WHERE PelangganID = 4;

COMMIT TRANSACTION; 

PRINT 'Data Meisya setelah di-COMMIT:';
SELECT * FROM Pelanggan WHERE PelangganID = 4;