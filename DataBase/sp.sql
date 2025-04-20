IF OBJECT_ID('sp_YeniRezervasyon', 'P') IS NOT NULL
BEGIN
    DROP PROCEDURE sp_YeniRezervasyon;
END;
GO
CREATE PROCEDURE sp_YeniRezervasyon
    @IslemTuru NVARCHAR(10), -- 'Ekle' veya 'Sil' iþlemi seçimi
    @RezervasyonID INT = NULL, -- Silme iþlemi için gerekli
    @KullaniciID INT = NULL, -- Ekleme iþlemi için gerekli
    @OdaID INT = NULL,
    @CheckinTarihi DATE = NULL,
    @CheckoutTarihi DATE = NULL,
    @GunlukUcret MONEY = NULL,
    @ToplamTutar MONEY = NULL
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        IF @IslemTuru = 'Ekle'
        BEGIN
            -- Oda doluluk kontrolü
            DECLARE @DolulukDurumu SMALLINT;
            SELECT @DolulukDurumu = DolulukDurumu
            FROM tblOda
            WHERE ID = @OdaID;

            IF @DolulukDurumu = 1
            BEGIN
                THROW 50000, 'Oda dolu, lütfen baþka bir oda seçin.', 1;
            END

            -- Rezervasyon ekleme
            INSERT INTO tblRezervasyon 
            (
                ID, RezervasyonNumarasi, CheckinTarihi, CheckoutTarihi, 
                RezervasyonTarihi, GunSayisi, GunlukUcret, BurutUcret, 
                NetUcret, ToplamTutar, KullaniciID, OdaTuruID
            )
            VALUES
            (
                (SELECT ISNULL(MAX(ID), 0) + 1 FROM tblRezervasyon),
                (SELECT ISNULL(MAX(RezervasyonNumarasi), 0) + 1 FROM tblRezervasyon),
                @CheckinTarihi, @CheckoutTarihi, GETDATE(),
                DATEDIFF(DAY, @CheckinTarihi, @CheckoutTarihi),
                @GunlukUcret,
                @GunlukUcret * DATEDIFF(DAY, @CheckinTarihi, @CheckoutTarihi),
                @GunlukUcret * DATEDIFF(DAY, @CheckinTarihi, @CheckoutTarihi), 
                @ToplamTutar, @KullaniciID, @OdaID
            );

            -- Oda doluluk durumunu güncelle
            UPDATE tblOda
            SET DolulukDurumu = 1, RezervasyonID = (SELECT MAX(ID) FROM tblRezervasyon)
            WHERE ID = @OdaID;
        END

        ELSE IF @IslemTuru = 'Sil'
        BEGIN
            -- Rezervasyon kontrolü
            IF NOT EXISTS (SELECT 1 FROM tblRezervasyon WHERE ID = @RezervasyonID)
            BEGIN
                THROW 50000, 'Silinecek rezervasyon bulunamadý.', 1;
            END

            -- Rezervasyon silme
            DELETE FROM tblRezervasyon
            WHERE ID = @RezervasyonID;

            -- Oda doluluk durumunu güncelle (boþ)
            UPDATE tblOda
            SET DolulukDurumu = 0, RezervasyonID = NULL
            WHERE ID = @OdaID;
        END

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;

        -- Hata mesajýný konsola dök
        DECLARE @HataMesaji NVARCHAR(4000);
        SET @HataMesaji = ERROR_MESSAGE();
        PRINT 'Hata oluþtu: ' + @HataMesaji;
        RAISERROR(@HataMesaji, 16, 1);
    END CATCH
END;

GO
-- Mevcut bir oda için doluluk durumu kontrolü
SELECT ID, DolulukDurumu FROM tblOda WHERE ID = 20;

-- Mevcut rezervasyon ID'si ile silme iþlemi testi
EXEC sp_YeniRezervasyon
    @IslemTuru = 'Sil',
    @RezervasyonID = 21;

-- Yeni rezervasyon ekleme testi
EXEC sp_YeniRezervasyon
    @IslemTuru = 'Ekle',
    @KullaniciID = 19,
    @OdaID = 17,
    @CheckinTarihi = '2024-12-25',
    @CheckoutTarihi = '2024-12-30',
    @GunlukUcret = 150.00,
    @ToplamTutar = 750.00;

	SELECT * FROM tblOda

	GO

-- Kontroller
SELECT * FROM tblRezervasyon;
SELECT * FROM tblOda;


