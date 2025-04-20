-- Fonksiyon: Otelin y�ld�z say�s�n� d�nd�rme
CREATE FUNCTION fn_GetOtelYildiz
(
    @OtelID INT -- Parametre: Otel ID'si
)
RETURNS INT -- D�n�� tipi: Scalar (tek bir de�er)
AS
BEGIN
    DECLARE @Yildiz INT; -- D�n�� de�eri i�in de�i�ken

    -- Otel tablosundan, verilen OtelID'ye g�re y�ld�z say�s�n� al
    SELECT TOP 1 @Yildiz = Yildiz
    FROM tblOtel
    WHERE ID = @OtelID;

    RETURN @Yildiz; -- Y�ld�z say�s�n� d�nd�r
END;
GO

-- Fonksiyonu test etme (Otel 1'in y�ld�z say�s�n� d�nd�rme)
SELECT dbo.fn_GetOtelYildiz(1) as yildizsayisi;

GO
