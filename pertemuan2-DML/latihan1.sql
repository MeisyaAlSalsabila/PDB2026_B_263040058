INSERT INTO Pelanggan (NamaDepan, NamaBelakang, Email,NoTelepon)
VALUES 
('Meisya', 'Al Salsabila', 'meisyaasa@gmail,com', '09842369259'),
('Priska', 'Azizah', 'priska@gmail,com', '0897636281');


SELECT *FROM Pelanggan;

UPDATE Pelanggan
SET Email = 'bubu@gmail.com'
WHERE PelangganID = 2;

BEGIN TRANSACTION
DELETE FROM Pelanggan
WHERE PelangganID = 1;

PRINT 'data pelanggan setelah tidak sengaja terhapus'
SELECT * FROM Pelanggan;

ROLLBACK TRANSACTION;
SELECT  *FROM Pelanggan;