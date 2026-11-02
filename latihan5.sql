USE TokoRetailDB;
GO

-- 1. Buat tabel detail
CREATE TABLE PesananDetail (
    PesananDetailID INT IDENTITY(1,1) PRIMARY KEY,
    PesananID INT NOT NULL,
    ProdukID INT NOT NULL,
    Jumlah INT NOT NULL,

    CONSTRAINT FK_Detail_Header
        FOREIGN KEY (PesananID) REFERENCES PesananHeader(PesananID),

    CONSTRAINT FK_Detail_Produk
        FOREIGN KEY (ProdukID) REFERENCES Produk(ProdukID)
);
GO

-- 2. Coba hapus Pelanggan (sengaja gagal)
PRINT 'Mencoba menghapus Pelanggan... (diperkirakan gagal)';
BEGIN TRY
    DROP TABLE Pelanggan;
END TRY
BEGIN CATCH
    PRINT ERROR_MESSAGE();
END CATCH;
GO

-- 3. Coba hapus PesananHeader (sengaja gagal)
PRINT 'Mencoba menghapus PesananHeader... (diperkirakan gagal)';
BEGIN TRY
    DROP TABLE PesananHeader;
END TRY
BEGIN CATCH
    PRINT ERROR_MESSAGE();
END CATCH;
GO

-- 4. Hapus dari anak ke induk (berhasil)
PRINT 'Menghapus PesananDetail...';
DROP TABLE PesananDetail;
GO

PRINT 'Menghapus PesananHeader...';
DROP TABLE PesananHeader;
GO

PRINT 'Menghapus Pelanggan...';
DROP TABLE Pelanggan;
GO

SELECT name FROM sys.tables;