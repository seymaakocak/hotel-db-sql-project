
-- Log Tablosu Oluþturuluyor
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

-- Trigger Tanýmlanýyor
CREATE TRIGGER trg_RezervasyonLog
ON tblRezervasyon
AFTER INSERT, DELETE
AS
BEGIN
    -- Yeni eklenen rezervasyonlarý log tablosuna ekle
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

    -- Silinen rezervasyonlarý log tablosuna ekle
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

-- Test Kodlarý

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
    2006, -- Rezervasyon numarasý
    '2024-12-25', 
    '2024-12-30', 
    GETDATE(), 
    5, -- Gün sayýsý
    150.00, -- Günlük ücret
    750.00, -- Brüt ücret
    700.00, -- Net ücret
    750.00, -- Toplam tutar
    20, -- Kullanýcý ID
    6 -- Oda Türü ID
);

-- Rezervasyon Silme Testi
DELETE FROM tblRezervasyon 
WHERE ID = 112;

-- Log Tablosunu Kontrol Etme
SELECT * 
FROM tblRezervasyonLog;

--testler
--  Rezervasyon Ekleme (Farklý Kullanýcý ve Oda Turu)
INSERT INTO tblRezervasyon 
(
    ID, RezervasyonNumarasi, CheckinTarihi, CheckoutTarihi, 
    RezervasyonTarihi, GunSayisi, GunlukUcret, BurutUcret, 
    NetUcret, ToplamTutar, KullaniciID, OdaTuruID
)
VALUES
(
    123, -- Rezervasyon ID
    1023, -- Rezervasyon numarasý
    '2025-01-01', 
    '2025-01-05', 
    GETDATE(), 
    4, -- Gün sayýsý
    200.00, -- Günlük ücret
    800.00, -- Brüt ücret
    750.00, -- Net ücret
    800.00, -- Toplam tutar
    2, -- Kullanýcý ID
    102 -- Oda Türü ID
);

-- Rezervasyon Silme 
DELETE FROM tblRezervasyon 
WHERE ID = 21;

-- 6. Log Tablosunda Ýþlemleri Kontrol Etme
SELECT * 
FROM tblRezervasyonLog;


-- Eðer bir oda dolu olarak iþaretlenmiþse (DolulukDurumu = 1), bu testin geçmemesi gerekir.
UPDATE tblOda
SET DolulukDurumu = 1
WHERE ID = 122;


-- Bu ekleme dolu bir oda için test edilir
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
        1014, -- Rezervasyon numarasý
        '2025-04-01', 
        '2025-04-05', 
        GETDATE(), 
        4, -- Gün sayýsý
        300.00, -- Günlük ücret
        1200.00, -- Brüt ücret
        1150.00, -- Net ücret
        1200.00, -- Toplam tutar
        2, -- Kullanýcý ID
        102 -- Oda ID
    );
END TRY
BEGIN CATCH
    PRINT 'Hata oluþtu: Oda zaten dolu';
END CATCH;

-- Log tablosunda deðiþiklik yapýlmadýðýný kontrol et
SELECT * 
FROM tblRezervasyonLog;

SELECT * FROM tblRezervasyon
SELECT * FROM tblOda