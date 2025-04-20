IF OBJECT_ID('sp_YeniRezervasyon', 'P') IS NOT NULL
BEGIN
    DROP PROCEDURE sp_YeniRezervasyon;
END;
GO
CREATE PROCEDURE sp_YeniRezervasyon
    @IslemTuru NVARCHAR(10), -- 'Ekle' veya 'Sil' i�lemi se�imi
    @RezervasyonID INT = NULL, -- Silme i�lemi i�in gerekli
    @KullaniciID INT = NULL, -- Ekleme i�lemi i�in gerekli
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
            -- Oda doluluk kontrol�
            DECLARE @DolulukDurumu SMALLINT;
            SELECT @DolulukDurumu = DolulukDurumu
            FROM tblOda
            WHERE ID = @OdaID;

            IF @DolulukDurumu = 1
            BEGIN
                THROW 50000, 'Oda dolu, l�tfen ba�ka bir oda se�in.', 1;
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

            -- Oda doluluk durumunu g�ncelle
            UPDATE tblOda
            SET DolulukDurumu = 1, RezervasyonID = (SELECT MAX(ID) FROM tblRezervasyon)
            WHERE ID = @OdaID;
        END

        ELSE IF @IslemTuru = 'Sil'
        BEGIN
            -- Rezervasyon kontrol�
            IF NOT EXISTS (SELECT 1 FROM tblRezervasyon WHERE ID = @RezervasyonID)
            BEGIN
                THROW 50000, 'Silinecek rezervasyon bulunamad�.', 1;
            END

            -- Rezervasyon silme
            DELETE FROM tblRezervasyon
            WHERE ID = @RezervasyonID;

            -- Oda doluluk durumunu g�ncelle (bo�)
            UPDATE tblOda
            SET DolulukDurumu = 0, RezervasyonID = NULL
            WHERE ID = @OdaID;
        END

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;

        -- Hata mesaj�n� konsola d�k
        DECLARE @HataMesaji NVARCHAR(4000);
        SET @HataMesaji = ERROR_MESSAGE();
        PRINT 'Hata olu�tu: ' + @HataMesaji;
        RAISERROR(@HataMesaji, 16, 1);
    END CATCH
END;

GO
-- Mevcut bir oda i�in doluluk durumu kontrol�
SELECT ID, DolulukDurumu FROM tblOda WHERE ID = 20;

-- Mevcut rezervasyon ID'si ile silme i�lemi testi
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


