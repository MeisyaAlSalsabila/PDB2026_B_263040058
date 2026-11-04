USE TokoRetailDB;
GO

CREATE TABLE Produk (
    ProdukID INT,
    SKU VARCHAR(15),
    NamaProduk VARCHAR(100),
    Harga DECIMAL(10, 2),
    Stok INT
);
GO

CREATE TABLE Pelanggan (
    PelangganID INT IDENTITY(1,1) PRIMARY KEY,
    NamaDepan VARCHAR(50) NOT NULL,
    NamaBelakang VARCHAR(50) NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    TanggalDaftar DATE DEFAULT GETDATE()
);
GO

CREATE TABLE PesananHeader (
    PesananID INT IDENTITY(1,1) PRIMARY KEY,
    TanggalPesanan DATETIME2 NOT NULL,
    PelangganID INT NOT NULL,
    StatusPesanan VARCHAR(10) NOT NULL,

    CONSTRAINT FK_Pesanan_Pelanggan
    FOREIGN KEY (PelangganID)
    REFERENCES Pelanggan(PelangganID),

    CONSTRAINT CHK_StatusPesanan
    CHECK (StatusPesanan IN ('Baru', 'Proses', 'Selesai'))
);
GO