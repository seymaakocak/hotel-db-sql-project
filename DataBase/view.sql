CREATE VIEW vw_OtelDetay AS
SELECT
    o.ID AS OtelID,
    o.Ad AS OtelAd,
    o.Aciklama AS OtelAciklama,
    o.Yildiz AS OtelYildiz,
    o.CheckinSaati AS OtelCheckinSaati,
    o.CheckoutSaati AS OtelCheckoutSaati,
    s.Ad AS SehirAd,
    i.Ad AS IlceAd,
    u.Ad AS UlkeAd,
    -- Use the function to get the star rating of the hotel
    dbo.fn_GetOtelYildiz(o.ID) AS YildizSayisi,
    -- Format the check-in and check-out times as 'HH:MM'
    FORMAT(o.CheckinSaati, 'HH:mm') AS FormattedCheckinSaati,
    FORMAT(o.CheckoutSaati, 'HH:mm') AS FormattedCheckoutSaati,
    -- Add a CASE statement to display if the hotel is considered "luxury" based on stars
    CASE 
        WHEN o.Yildiz >= 5 THEN 'Luxury'
        WHEN o.Yildiz BETWEEN 3 AND 4 THEN 'Standard'
        ELSE 'Budget'
    END AS OtelTuru
FROM
    tblOtel o
LEFT JOIN tblSehir s ON o.SehirID = s.ID
LEFT JOIN tblIlce i ON o.IlceID = i.ID
LEFT JOIN tblUlke u ON o.UlkeID = u.ID;
GO

-- Testing the VIEW
SELECT * FROM vw_OtelDetay;

GO
