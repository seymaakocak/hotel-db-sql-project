
-- Log Tablosu Olu�turuluyor
CREATE TABLE tblRezervasyonLog
(
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    RezervasyonID INT,
    KullaniciID INT,
    OdaID INT,
    IslemTuru NVARCHAR(10), -- 'Ekleme' veya 'Silme'
    IslemTarihi DATETIME DEFAULT GETDATE()
);

GO

-- Trigger Tan�mlan�yor
CREATE TRIGGER trg_RezervasyonLog
ON tblRezervasyon
AFTER INSERT, DELETE
AS
BEGIN
    -- Yeni eklenen rezervasyonlar� log tablosuna ekle
    IF EXISTS (SELECT * FROM INSERTED)
    BEGIN
        INSERT INTO tblRezervasyonLog (RezervasyonID, KullaniciID, OdaID, IslemTuru)
        SELECT 
            ID AS RezervasyonID,
            KullaniciID,
            OdaTuruID AS OdaID,
            'Ekleme' AS IslemTuru
        FROM INSERTED;
    END

    -- Silinen rezervasyonlar� log tablosuna ekle
    IF EXISTS (SELECT * FROM DELETED)
    BEGIN
        INSERT INTO tblRezervasyonLog (RezervasyonID, KullaniciID, OdaID, IslemTuru)
        SELECT 
            ID AS RezervasyonID,
            KullaniciID,
            OdaTuruID AS OdaID,
            'Silme' AS IslemTuru
        FROM DELETED;
    END
END;
GO

-- Test Kodlar�

-- Rezervasyon Ekleme Testi
INSERT INTO tblRezervasyon 
(
    ID, RezervasyonNumarasi, CheckinTarihi, CheckoutTarihi, 
    RezervasyonTarihi, GunSayisi, GunlukUcret, BurutUcret, 
    NetUcret, ToplamTutar, KullaniciID, OdaTuruID
)
VALUES
(
    21, -- Rezervasyon ID
    2006, -- Rezervasyon numaras�
    '2024-12-25', 
    '2024-12-30', 
    GETDATE(), 
    5, -- G�n say�s�
    150.00, -- G�nl�k �cret
    750.00, -- Br�t �cret
    700.00, -- Net �cret
    750.00, -- Toplam tutar
    20, -- Kullan�c� ID
    6 -- Oda T�r� ID
);

-- Rezervasyon Silme Testi
DELETE FROM tblRezervasyon 
WHERE ID = 112;

-- Log Tablosunu Kontrol Etme
SELECT * 
FROM tblRezervasyonLog;

--testler
--  Rezervasyon Ekleme (Farkl� Kullan�c� ve Oda Turu)
INSERT INTO tblRezervasyon 
(
    ID, RezervasyonNumarasi, CheckinTarihi, CheckoutTarihi, 
    RezervasyonTarihi, GunSayisi, GunlukUcret, BurutUcret, 
    NetUcret, ToplamTutar, KullaniciID, OdaTuruID
)
VALUES
(
    123, -- Rezervasyon ID
    1023, -- Rezervasyon numaras�
    '2025-01-01', 
    '2025-01-05', 
    GETDATE(), 
    4, -- G�n say�s�
    200.00, -- G�nl�k �cret
    800.00, -- Br�t �cret
    750.00, -- Net �cret
    800.00, -- Toplam tutar
    2, -- Kullan�c� ID
    102 -- Oda T�r� ID
);

-- Rezervasyon Silme 
DELETE FROM tblRezervasyon 
WHERE ID = 21;

-- 6. Log Tablosunda ��lemleri Kontrol Etme
SELECT * 
FROM tblRezervasyonLog;


-- E�er bir oda dolu olarak i�aretlenmi�se (DolulukDurumu = 1), bu testin ge�memesi gerekir.
UPDATE tblOda
SET DolulukDurumu = 1
WHERE ID = 122;


-- Bu ekleme dolu bir oda i�in test edilir
BEGIN TRY
    INSERT INTO tblRezervasyon 
    (
        ID, RezervasyonNumarasi, CheckinTarihi, CheckoutTarihi, 
        RezervasyonTarihi, GunSayisi, GunlukUcret, BurutUcret, 
        NetUcret, ToplamTutar, KullaniciID, OdaTuruID
    )
    VALUES
    (
        104, -- Rezervasyon ID
        1014, -- Rezervasyon numaras�
        '2025-04-01', 
        '2025-04-05', 
        GETDATE(), 
        4, -- G�n say�s�
        300.00, -- G�nl�k �cret
        1200.00, -- Br�t �cret
        1150.00, -- Net �cret
        1200.00, -- Toplam tutar
        2, -- Kullan�c� ID
        102 -- Oda ID
    );
END TRY
BEGIN CATCH
    PRINT 'Hata olu�tu: Oda zaten dolu';
END CATCH;

-- Log tablosunda de�i�iklik yap�lmad���n� kontrol et
SELECT * 
FROM tblRezervasyonLog;

SELECT * FROM tblRezervasyon
SELECT * FROM tblOda