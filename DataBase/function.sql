-- Fonksiyon: Otelin yýldýz sayýsýný döndürme
CREATE FUNCTION fn_GetOtelYildiz
(
    @OtelID INT -- Parametre: Otel ID'si
)
RETURNS INT -- Dönüþ tipi: Scalar (tek bir deðer)
AS
BEGIN
    DECLARE @Yildiz INT; -- Dönüþ deðeri için deðiþken

    -- Otel tablosundan, verilen OtelID'ye göre yýldýz sayýsýný al
    SELECT TOP 1 @Yildiz = Yildiz
    FROM tblOtel
    WHERE ID = @OtelID;

    RETURN @Yildiz; -- Yýldýz sayýsýný döndür
END;
GO

-- Fonksiyonu test etme (Otel 1'in yýldýz sayýsýný döndürme)
SELECT dbo.fn_GetOtelYildiz(1) as yildizsayisi;

GO
