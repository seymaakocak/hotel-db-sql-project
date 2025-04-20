DECLARE @i INT = 1;
WHILE @i <= 10000
BEGIN
    INSERT INTO tblRezervasyon (
        ID, -- ID sütununa deðer ekliyoruz
        RezervasyonNumarasi, CheckinTarihi, CheckoutTarihi, RezervasyonTarihi, GunSayisi, GunlukUcret, BurutUcret, IndirimToplami, NetUcret, ToplamEkstraUcret, ToplamTutar, OdaTuru, Aciklama, KullaniciID, OdaTuruID, PersonelID
    )
    VALUES (
        @i, -- ID'ye @i deðerini atýyoruz
        @i, 
        DATEADD(DAY, @i % 10, '2024-01-01'), 
        DATEADD(DAY, (@i % 10) + 5, '2024-01-01'), 
        DATEADD(DAY, @i % 30, '2023-12-01'), 
        @i % 5 + 1, 
        @i % 1000 + 50.75, 
        (@i % 1000 + 50.75) * (@i % 5 + 1), 
        (@i % 1000) * 0.1, 
        (@i % 1000 + 50.75) * (@i % 5 + 1) - (@i % 1000) * 0.1, 
        0, 
        (@i % 1000 + 50.75) * (@i % 5 + 1), 
        'Deluxe', 
        'Test Açýklama', 
        @i % 100 + 1, 
        @i % 50 + 1, 
        @i % 10 + 1
    );
    SET @i = @i + 1;
END;

SET STATISTICS IO ON;

SELECT ID, RezervasyonNumarasi, RezervasyonTarihi
FROM tblRezervasyon
WHERE RezervasyonTarihi = '2023-12-15';

SET STATISTICS IO OFF;

CREATE NONCLUSTERED INDEX IX_RezervasyonTarihi
ON tblRezervasyon (RezervasyonTarihi);

SET STATISTICS IO ON;

SELECT ID, RezervasyonNumarasi, RezervasyonTarihi
FROM tblRezervasyon
WHERE RezervasyonTarihi = '2023-12-15';

SET STATISTICS IO OFF;
