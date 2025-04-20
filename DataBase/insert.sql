
-- Inserting into tblUlke with manual IDs
-- tblUlke
INSERT INTO tblUlke (ID, Ad) VALUES 
(1, 'Türkiye'),
(2, 'İspanya'),
(3, 'Fransa'),
(4, 'Almanya'),
(5, 'İtalya'),
(6, 'Hollanda'),
(7, 'Belçika'),
(8, 'İngiltere'),
(9, 'Portekiz'),
(10, 'Yunanistan'),
(11, 'Rusya'),
(12, 'Çin'),
(13, 'Japonya'),
(14, 'Hindistan'),
(15, 'Meksika'),
(16, 'ABD'),
(17, 'Kanada'),
(18, 'Brezilya'),
(19, 'Arjantin'),
(20, 'Güney Kore');

-- tblSehir
INSERT INTO tblSehir (ID, Ad, UlkeID) VALUES 
(1, 'İstanbul', 1),
(2, 'Madrid', 2),
(3, 'Paris', 3),
(4, 'Berlin', 4),
(5, 'Roma', 5),
(6, 'Amsterdam', 6),
(7, 'Brüksel', 7),
(8, 'Londra', 8),
(9, 'Lizbon', 9),
(10, 'Atina', 10),
(11, 'Moskova', 11),
(12, 'Pekin', 12),
(13, 'Tokyo', 13),
(14, 'Yeni Delhi', 14),
(15, 'Mexico City', 15),
(16, 'New York', 16),
(17, 'Toronto', 17),
(18, 'Sao Paulo', 18),
(19, 'Buenos Aires', 19),
(20, 'Seul', 20);

-- tblIlce
INSERT INTO tblIlce (ID, Ad, SehirID) VALUES 
(1, 'Kadıköy', 1),
(2, 'Beşiktaş', 1),
(3, 'Centro', 2),
(4, 'Eixample', 2),
(5, 'Montmartre', 3),
(6, 'Marais', 3),
(7, 'Mitte', 4),
(8, 'Kreuzberg', 4),
(9, 'Trastevere', 5),
(10, 'Testaccio', 5),
(11, 'Jordaan', 6),
(12, 'De Pijp', 6),
(13, 'Saint-Gilles', 7),
(14, 'Etterbeek', 7),
(15, 'Camden', 8),
(16, 'Westminster', 8),
(17, 'Alfama', 9),
(18, 'Bairro Alto', 9),
(19, 'Plaka', 10),
(20, 'Monastiraki', 10);


-- tblMahalle
INSERT INTO tblMahalle (ID, Ad, IlceID) VALUES 
(1, 'Moda', 1),
(2, 'Acıbadem', 1),
(3, 'Levent', 2),
(4, 'Etiler', 2),
(5, 'Salamanca', 3),
(6, 'Chamberi', 3),
(7, 'Gracia', 4),
(8, 'Barceloneta', 4),
(9, 'Pigalle', 5),
(10, 'Bastille', 6),
(11, 'Moabit', 7),
(12, 'Charlottenburg', 7),
(13, 'Esquilino', 9),
(14, 'San Lorenzo', 9),
(15, 'De Wallen', 11),
(16, 'Borneo', 11),
(17, 'Ixelles', 13),
(18, 'Jette', 13),
(19, 'Bloomsbury', 15),
(20, 'Soho', 15);

-- tblBolum
INSERT INTO tblBolum (ID, Ad) VALUES 
(1, 'Resepsiyon'),
(2, 'Bakım Onarım'),
(3, 'Yönetim'),
(4, 'Mutfak'),
(5, 'Temizlik'),
(6, 'Güvenlik'),
(7, 'Lojistik'),
(8, 'Teknik Destek'),
(9, 'İnsan Kaynakları'),
(10, 'Muhasebe'),
(11, 'Satış'),
(12, 'Pazarlama'),
(13, 'Bilişim'),
(14, 'Operasyon'),
(15, 'Hizmet'),
(16, 'Eğitim'),
(17, 'Sağlık'),
(18, 'Bakım'),
(19, 'Planlama'),
(20, 'Koordinasyon');

-- tblGorev
INSERT INTO tblGorev (ID, Ad) VALUES 
(1, 'Misafir Karşılama'),
(2, 'Yönetici Asistanı'),
(3, 'Aşçı'),
(4, 'Güvenlik Görevlisi'),
(5, 'Temizlik Görevlisi'),
(6, 'Teknik Destek Uzmanı'),
(7, 'Pazarlama Uzmanı'),
(8, 'Satış Uzmanı'),
(9, 'Muhasebe Uzmanı'),
(10, 'İnsan Kaynakları Uzmanı'),
(11, 'Resepsiyonist'),
(12, 'Servis Elemanı'),
(13, 'Kat Görevlisi'),
(14, 'Operasyon Sorumlusu'),
(15, 'Koordinatör'),
(16, 'Eğitmen'),
(17, 'Doktor'),
(18, 'Hemşire'),
(19, 'Planlama Uzmanı'),
(20, 'Lojistik Uzmanı');

-- tblPozisyon
INSERT INTO tblPozisyon (ID, Ad) VALUES 
(1, 'Resepsiyon Görevlisi'),
(2, 'Yönetici'),
(3, 'Aşçıbaşı'),
(4, 'Teknik Şef'),
(5, 'Temizlik Şefi'),
(6, 'Güvenlik Şefi'),
(7, 'Lojistik Şefi'),
(8, 'Muhasebe Müdürü'),
(9, 'Satış Müdürü'),
(10, 'Pazarlama Müdürü'),
(11, 'Genel Müdür'),
(12, 'Operasyon Müdürü'),
(13, 'Eğitim Müdürü'),
(14, 'Sağlık Müdürü'),
(15, 'Planlama Müdürü'),
(16, 'Koordinasyon Müdürü'),
(17, 'Lojistik Müdürü'),
(18, 'Hizmet Müdürü'),
(19, 'IT Müdürü'),
(20, 'Bakım Müdürü');

-- tblHizmetTuru
INSERT INTO tblHizmetTuru (ID, Ad) VALUES 
(1, 'Kahvaltı'),
(2, 'Spa'),
(3, 'Oda Servisi'),
(4, 'Vale Hizmeti'),
(5, 'Çamaşırhane'),
(6, 'Fitness Merkezi'),
(7, 'Yüzme Havuzu'),
(8, 'Sauna'),
(9, 'Masaj'),
(10, 'Tenis Kortu'),
(11, 'Golf Sahası'),
(12, 'Restoran'),
(13, 'Bar'),
(14, 'Toplantı Salonu'),
(15, 'Düğün Salonu'),
(16, 'Transfer Hizmeti'),
(17, 'Rehberlik Hizmeti'),
(18, 'Araç Kiralama'),
(19, 'Çocuk Bakımı'),
(20, 'Gece Kulübü');

-- tblKullaniciTuru
INSERT INTO tblKullaniciTuru (ID, Ad) VALUES 
(1, 'Admin'),
(2, 'Temizlik Görevlisi'),
(3, 'Resepsiyonist'),
(4, 'Güvenlik'),
(5, 'Mutfak Personeli'),
(6, 'Teknik Destek'),
(7, 'Lojistik Personeli'),
(8, 'Muhasebe'),
(9, 'Satış'),
(10, 'Pazarlama'),
(11, 'İnsan Kaynakları'),
(12, 'Operasyon'),
(13, 'Koordinasyon'),
(14, 'Hizmet'),
(15, 'Planlama'),
(16, 'Eğitim'),
(17, 'Sağlık'),
(18, 'Bakım'),
(19, 'IT'),
(20, 'Yönetici');

-- tblOdaOzellikTuru
INSERT INTO tblOdaOzellikTuru (ID, Ad, Aciklama) VALUES 
(1, 'Klimalı', 'Oda klimalıdır'),
(2, 'Engelli Dostu', 'Engelli bireyler için uygun'),
(3, 'Deniz Manzaralı', 'Oda deniz manzaralıdır'),
(4, 'Balkonlu', 'Oda balkona sahiptir'),
(5, 'Küvetli', 'Odada küvet bulunmaktadır'),
(6, 'Mini Barlı', 'Odada mini bar bulunmaktadır'),
(7, 'King Size Yataklı', 'Odada king size yatak bulunmaktadır'),
(8, 'Ses Yalıtımlı', 'Odada ses yalıtımı mevcuttur'),
(9, 'Sigara İçilmez', 'Sigara içilmez odadır'),
(10, 'Yerden Isıtmalı', 'Odada yerden ısıtma bulunmaktadır'),
(11, 'Dijital Kasa', 'Odada dijital kasa bulunmaktadır'),
(12, 'Akıllı TV', 'Odada akıllı televizyon bulunmaktadır'),
(13, 'Wi-Fi', 'Odada ücretsiz Wi-Fi bulunmaktadır'),
(14, 'Jakuzili', 'Odada jakuzi bulunmaktadır'),
(15, 'Çift Banyolu', 'Odada iki banyo bulunmaktadır'),
(16, 'Oturma Alanlı', 'Odada oturma alanı bulunmaktadır'),
(17, 'Kütüphaneli', 'Oda içerisinde kütüphane bulunmaktadır'),
(18, 'Özel Bahçeli', 'Odada özel bahçe bulunmaktadır'),
(19, 'Terastan Girişli', 'Terastan direkt giriş bulunmaktadır'),
(20, 'Aile Odası', 'Aile için tasarlanmış geniş oda');

-- Inserting into tblOtelHizmeti with 20 records
INSERT INTO tblOtelHizmeti (ID, HizmetTuru, Aciklama) 
VALUES 
(1, 'Oda Servisi', '24 saat oda servisi'),
(2, 'Spa', 'Masaj ve sauna hizmetleri'),
(3, 'Fitness', 'Fitness salonu kullanımı'),
(4, 'Vale', 'Araç park hizmeti'),
(5, 'Transfer', 'Havaalanı transfer hizmeti'),
(6, 'Oyun Salonu', 'Çocuk oyun alanı'),
(7, 'Havuz', 'Yüzme havuzu kullanımı'),
(8, 'WiFi', 'Ücretsiz WiFi erişimi'),
(9, 'Kuru Temizleme', 'Kuru temizleme hizmeti'),
(10, 'Kuaför', 'Kuaför ve güzellik hizmetleri'),
(11, 'Restoran', 'Otel restoranı'),
(12, 'Bar', 'Bar hizmeti'),
(13, 'Karaoke', 'Karaoke odası'),
(14, 'Canlı Müzik', 'Canlı müzik etkinlikleri'),
(15, 'Oda Temizliği', 'Günlük oda temizliği'),
(16, 'Sağlık Hizmeti', 'Tıbbi destek hizmeti'),
(17, 'Bebek Bakımı', 'Bebek bakıcılığı hizmeti'),
(18, 'Spa Havuzu', 'Spa havuzu kullanımı'),
(19, 'Bisiklet Kiralama', 'Bisiklet kiralama hizmeti'),
(20, 'Yoga', 'Yoga dersleri');

-- Inserting into tblOtel with 20 records
INSERT INTO tblOtel (ID, Ad, Aciklama, Yildiz, Telefon, Fax, Enlem, Boylam, WebSitesi, Email, KullaniciPuani, CheckinSaati, CheckoutSaati, UcretsizBebekYasi, UcretsizCocukYasi, EvcilHayvan, SigaraAlani, KahvaltiBaslangicSaati, KahvaltiBitisSaati, OgleYemegiBaslangicSaati, OgleYemegiBitisSaati, AksamYemegiBaslangicSaati, AksamYemegiBitisSaati, SehirID, IlceID, UlkeID)
VALUES 
(1, 'Otel A', 'Lüks otel', 5, '1234567890', '123456789', 41.0, 29.0, 'www.otelA.com', 'info@otelA.com', 9, '14:00', '12:00', 2, 12, 1, 1, '08:00', '10:00', '12:00', '14:00', '19:00', '21:00', 1, 1, 1),
(2, 'Otel B', 'Şehir oteli', 4, '1234567891', '123456788', 40.0, 28.0, 'www.otelB.com', 'info@otelB.com', 8, '15:00', '11:00', 1, 10, 0, 1, '08:30', '10:30', '13:00', '15:00', '20:00', '22:00', 2, 2, 2),
(3, 'Otel C', 'Deniz kenarı otel', 5, '1234567892', '123456787', 39.0, 27.0, 'www.otelC.com', 'info@otelC.com', 9, '13:00', '12:00', 3, 15, 1, 0, '07:00', '09:30', '12:00', '14:30', '18:30', '20:30', 3, 3, 3),
(4, 'Otel D', 'Butik otel', 3, '1234567893', '123456786', 38.0, 26.0, 'www.otelD.com', 'info@otelD.com', 7, '16:00', '10:00', 0, 5, 1, 1, '09:00', '11:00', '12:30', '14:00', '19:30', '21:30', 4, 4, 4),
(5, 'Otel E', 'Konferans oteli', 4, '1234567894', '123456785', 37.0, 25.0, 'www.otelE.com', 'info@otelE.com', 8, '12:00', '10:30', 1, 8, 0, 0, '07:30', '09:30', '13:00', '15:00', '18:00', '20:00', 5, 5, 5),
(6, 'Otel F', 'Tatil köyü', 5, '1234567895', '123456784', 36.0, 24.0, 'www.otelF.com', 'info@otelF.com', 9, '15:00', '11:00', 3, 10, 1, 0, '08:00', '10:00', '12:00', '14:00', '19:00', '21:00', 6, 6, 6),
(7, 'Otel G', 'Kırsal otel', 4, '1234567896', '123456783', 35.0, 23.0, 'www.otelG.com', 'info@otelG.com', 7, '14:00', '12:30', 1, 7, 0, 1, '08:30', '10:30', '12:30', '14:30', '19:30', '21:30', 7, 7, 7),
(8, 'Otel H', 'Tarihi otel', 5, '1234567897', '123456782', 34.0, 22.0, 'www.otelH.com', 'info@otelH.com', 10, '13:30', '10:00', 2, 10, 1, 0, '09:00', '11:00', '13:00', '15:00', '20:00', '22:00', 8, 8, 8),
(9, 'Otel I', 'Termal otel', 4, '1234567898', '123456781', 33.0, 21.0, 'www.otelI.com', 'info@otelI.com', 9, '14:00', '12:00', 1, 8, 0, 1, '07:30', '09:30', '12:30', '14:30', '18:30', '20:30', 9, 9, 9),
(10, 'Otel J', 'Ekonomik otel', 3, '1234567899', '123456780', 32.0, 20.0, 'www.otelJ.com', 'info@otelJ.com', 6, '15:00', '11:00', 0, 5, 0, 0, '08:00', '10:00', '13:00', '15:00', '19:00', '21:00', 10, 10, 10),
(11, 'Otel K', 'Spa oteli', 5, '1234567800', '123456779', 31.0, 19.0, 'www.otelK.com', 'info@otelK.com', 10, '14:00', '12:00', 2, 12, 1, 1, '07:00', '09:00', '12:30', '14:30', '18:30', '20:30', 11, 11, 11),
(12, 'Otel L', 'Kamp alanı', 2, '1234567801', '123456778', 30.0, 18.0, 'www.otelL.com', 'info@otelL.com', 5, '16:00', '10:30', 0, 6, 0, 1, '08:30', '10:30', '13:00', '15:00', '19:30', '21:30', 12, 12, 12),
(13, 'Otel M', 'Şehir merkezi oteli', 4, '1234567802', '123456777', 29.0, 17.0, 'www.otelM.com', 'info@otelM.com', 8, '15:30', '11:00', 1, 9, 1, 0, '09:00', '11:00', '12:00', '14:00', '19:00', '21:00', 13, 13, 13),
(14, 'Otel N', 'Kiralık evler', 3, '1234567803', '123456776', 28.0, 16.0, 'www.otelN.com', 'info@otelN.com', 7, '14:00', '12:00', 2, 10, 1, 1, '08:00', '10:00', '13:00', '15:00', '20:00', '22:00', 14, 14, 14),
(15, 'Otel O', 'Doğa oteli', 5, '1234567804', '123456775', 27.0, 15.0, 'www.otelO.com', 'info@otelO.com', 10, '13:00', '12:30', 3, 15, 0, 0, '07:30', '09:30', '12:30', '14:30', '19:30', '21:30', 15, 15, 15),
(16, 'Otel P', 'Bungalov otel', 4, '1234567805', '123456774', 26.0, 14.0, 'www.otelP.com', 'info@otelP.com', 8, '14:30', '10:30', 1, 6, 1, 1, '08:30', '10:30', '12:00', '14:00', '18:00', '20:00', 16, 16, 16),
(17, 'Otel Q', 'Şato otel', 5, '1234567806', '123456773', 25.0, 13.0, 'www.otelQ.com', 'info@otelQ.com', 9, '15:00', '11:00', 0, 8, 1, 0, '09:00', '11:00', '13:00', '15:00', '19:00', '21:00', 17, 17, 17),
(18, 'Otel R', 'Kayak oteli', 5, '1234567807', '123456772', 24.0, 12.0, 'www.otelR.com', 'info@otelR.com', 10, '14:30', '12:00', 2, 10, 0, 1, '07:00', '09:00', '12:30', '14:30', '18:30', '20:30', 18, 18, 18),
(19, 'Otel S', 'Balayı oteli', 5, '1234567808', '123456771', 23.0, 11.0, 'www.otelS.com', 'info@otelS.com', 10, '13:30', '12:30', 3, 15, 1, 0, '07:30', '09:30', '13:00', '15:00', '20:00', '22:00', 19, 19, 19),
(20, 'Otel T', 'Golf oteli', 4, '1234567809', '123456770', 22.0, 10.0, 'www.otelT.com', 'info@otelT.com', 9, '15:00', '11:00', 1, 12, 0, 1, '08:30', '10:30', '12:30', '14:30', '18:30', '20:30', 20, 20, 20);

-- Inserting into tblOdaTuru with manual IDs
INSERT INTO tblOdaTuru (ID, Ad, EnFazlaYatakSayisi, YatakSayisi, Aciklama, OtelID) 
VALUES 
(1, 'Standart Oda', 2, 1, 'Standart tek kişilik oda', 1),
(2, 'Balayı Odası', 2, 1, 'Balayı çiftlerine özel', 4),
(3, 'Suit Oda', 4, 2, 'Lüks suit oda', 2),
(4, 'Ekonomik Oda', 2, 1, 'Ekonomik fiyatlı oda', 3),
(5, 'Aile Odası', 6, 3, 'Geniş aile odası', 5),
(6, 'Deluxe Oda', 4, 2, 'Deluxe geniş oda', 1),
(7, 'King Suit', 4, 2, 'King suit lüks oda', 4),
(8, 'Hostel Tipi', 8, 4, 'Hostel tarzı oda', 2),
(9, 'Apart Oda', 3, 2, 'Apartman tipi oda', 3),
(10, 'Studio Oda', 2, 1, 'Studio tek kişilik oda', 5),
(11, 'Klasik Oda', 3, 1, 'Klasik konforlu oda', 1),
(12, 'Penthouse', 4, 2, 'En üst kat özel oda', 4),
(13, 'Bungalov', 2, 1, 'Doğa manzaralı bungalov', 2),
(14, 'Çift Kişilik Oda', 2, 1, 'Romantik çift kişilik oda', 3),
(15, 'Tek Kişilik Oda', 1, 1, 'Ekonomik tek kişilik oda', 5),
(16, 'Geniş Suit', 4, 2, 'Geniş aile suit oda', 1),
(17, 'İş Seyahati Odası', 2, 1, 'İş seyahatlerine özel oda', 4),
(18, 'Villa', 6, 3, 'Özel bahçeli villa', 2),
(19, 'Loft Oda', 3, 2, 'Modern loft tarzı oda', 3),
(20, 'Rezidans', 4, 2, 'Uzun süreli konaklamalar için rezidans', 5);

-- Inserting into tblSokak with manual IDs
INSERT INTO tblSokak (ID, Ad, MahalleID, OdaTuruID) 
VALUES 
(1, 'Atatürk Sokak', 1, 1),
(2, 'Cumhuriyet Sokak', 5, 5),
(3, 'İnönü Sokak', 2, 2),
(4, 'Gazi Sokak', 3, 3),
(5, 'Fatih Sokak', 4, 4),
(6, 'Barış Sokak', 6, 6),
(7, 'Özgürlük Sokak', 7, 7),
(8, 'Demokrasi Sokak', 8, 8),
(9, 'Zafer Sokak', 9, 9),
(10, 'Şehitler Sokak', 10, 10),
(11, 'Mevlana Sokak', 11, 11),
(12, 'Huzur Sokak', 12, 12),
(13, 'Sevgi Sokak', 13, 13),
(14, 'Erdem Sokak', 14, 14),
(15, 'Birlik Sokak', 15, 15),
(16, 'Dostluk Sokak', 16, 16),
(17, 'Vatan Sokak', 17, 17),
(18, 'Emek Sokak', 18, 18),
(19, 'Kardeşlik Sokak', 19, 19),
(20, 'Adalet Sokak', 20, 20);

-- Inserting into tblOdemeTuru with manual IDs
INSERT INTO tblOdemeTuru (ID, Ad) 
VALUES 
(1, 'Nakit'),
(2, 'Mobil Ödeme'),
(3, 'Kredi Kartı'),
(4, 'Banka Transferi'),
(5, 'Çek'),
(6, 'Bitcoin'),
(7, 'Ethereum'),
(8, 'PayPal'),
(9, 'Hediye Çeki'),
(10, 'Sanal Kart'),
(11, 'Taksitli Ödeme'),
(12, 'Havale'),
(13, 'QR Kod'),
(14, 'Temassız Kart'),
(15, 'Sodexo'),
(16, 'Multinet'),
(17, 'Ticket'),
(18, 'Apple Pay'),
(19, 'Google Pay'),
(20, 'Western Union');

INSERT INTO tblPersonel (ID, TC, Ad, Soyad, Cinsiyet, TelefonNumarasi, DogumTarihi, Email, DiskapiNo, IckapiNo, Aciklama, Sifre, Pozisyon, IseBaslamaTarihi, AktifIseBaslamaTarihi, CikisTarihi, Maas, UlkeID, SehirID, OdaTurID, IlceID, MahalleID, SokakID, GorevID, BolumID)
VALUES
(1, '11111111111', 'Ahmet', 'Yılmaz', 'Erkek', '05412345678', '1990-01-01', 'ahmet.yilmaz@example.com', '10', '5', 'Çalışkan personel', 'password1', 'Resepsiyonist', '2020-01-01', '2020-01-01', NULL, 4500, 1, 1, 1, 1, 1, 1, 1, 1),
(2, '22222222222', 'Ali', 'Bulut', 'Erkek', '05412345679', '1985-05-15', 'ali.bulut@example.com', '15', '8', 'Teknik uzman', 'password2', 'Teknik Uzman', '2018-06-01', '2018-06-01', NULL, 6000, 1, 2, 2, 2, 2, 2, 2, 2),
(3, '33333333333', 'Merve', 'Kaya', 'Kadın', '05412345680', '1993-03-10', 'merve.kaya@example.com', '20', '3', 'Ekip lideri', 'password3', 'Lider', '2019-04-01', '2019-04-01', NULL, 7000, 1, 3, 3, 3, 3, 3, 3, 3),
(4, '44444444444', 'Ece', 'Altun', 'Kadın', '05412345681', '1995-07-07', 'ece.altun@example.com', '25', '2', 'Kıdemli yönetici', 'password4', 'Yönetici', '2017-02-01', '2017-02-01', NULL, 8500, 1, 4, 4, 4, 4, 4, 4, 4),
(5, '55555555555', 'Berk', 'Demir', 'Erkek', '05412345682', '1990-10-10', 'berk.demir@example.com', '18', '6', 'Satış uzmanı', 'password5', 'Satış Uzmanı', '2021-01-01', '2021-01-01', NULL, 5000, 1, 5, 5, 5, 5, 5, 5, 5),
(6, '66666666666', 'Selin', 'Koç', 'Kadın', '05412345683', '1992-02-02', 'selin.koc@example.com', '14', '4', 'Muhasebe uzmanı', 'password6', 'Muhasebeci', '2021-03-01', '2021-03-01', NULL, 4800, 1, 1, 1, 1, 1, 1, 1, 1),
(7, '77777777777', 'Onur', 'Şahin', 'Erkek', '05412345684', '1994-08-18', 'onur.sahin@example.com', '12', '9', 'Depo sorumlusu', 'password7', 'Depo Sorumlusu', '2020-07-01', '2020-07-01', NULL, 4500, 1, 2, 2, 2, 2, 2, 2, 2),
(8, '88888888888', 'Elif', 'Güneş', 'Kadın', '05412345685', '1996-12-22', 'elif.gunes@example.com', '11', '1', 'İnsan kaynakları uzmanı', 'password8', 'İK Uzmanı', '2019-05-01', '2019-05-01', NULL, 5300, 1, 3, 3, 3, 3, 3, 3, 3),
(9, '99999999999', 'Fatih', 'Arslan', 'Erkek', '05412345686', '1987-04-14', 'fatih.arslan@example.com', '21', '3', 'Satış temsilcisi', 'password9', 'Satış Temsilcisi', '2021-08-01', '2021-08-01', NULL, 4600, 1, 4, 4, 4, 4, 4, 4, 4),
(10, '10101010101', 'Zeynep', 'Kurt', 'Kadın', '05412345687', '1998-05-30', 'zeynep.kurt@example.com', '16', '2', 'Proje asistanı', 'password10', 'Proje Asistanı', '2022-01-01', '2022-01-01', NULL, 4200, 1, 5, 5, 5, 5, 5, 5, 5),
(11, '12121212121', 'Burak', 'Eren', 'Erkek', '05412345688', '1990-06-15', 'burak.eren@example.com', '22', '6', 'Analist', 'password11', 'Analist', '2017-12-01', '2017-12-01', NULL, 5600, 1, 1, 1, 1, 1, 1, 1, 1),
(12, '13131313131', 'Gamze', 'Doğan', 'Kadın', '05412345689', '1993-03-19', 'gamze.dogan@example.com', '13', '5', 'Danışman', 'password12', 'Danışman', '2021-09-01', '2021-09-01', NULL, 4700, 1, 2, 2, 2, 2, 2, 2, 2),
(13, '14141414141', 'Kerem', 'Şimşek', 'Erkek', '05412345690', '1995-11-11', 'kerem.simsek@example.com', '17', '8', 'Lojistik sorumlusu', 'password13', 'Lojistik Uzmanı', '2020-04-01', '2020-04-01', NULL, 5100, 1, 3, 3, 3, 3, 3, 3, 3),
(14, '15151515151', 'Deniz', 'Yıldız', 'Kadın', '05412345691', '1999-01-21', 'deniz.yildiz@example.com', '19', '2', 'Stajyer', 'password14', 'Stajyer', '2023-06-01', '2023-06-01', NULL, 2000, 1, 4, 4, 4, 4, 4, 4, 4),
(15, '16161616161', 'Yasin', 'Akın', 'Erkek', '05412345692', '1991-07-07', 'yasin.akin@example.com', '18', '7', 'Tasarımcı', 'password15', 'Tasarım Uzmanı', '2019-10-01', '2019-10-01', NULL, 5800, 1, 5, 5, 5, 5, 5, 5, 5),
(16, '17171717171', 'Seda', 'Aydın', 'Kadın', '05412345693', '1994-09-15', 'seda.aydin@example.com', '24', '1', 'Pazarlama uzmanı', 'password16', 'Pazarlama Uzmanı', '2020-11-01', '2020-11-01', NULL, 5400, 1, 1, 1, 1, 1, 1, 1, 1),
(17, '18181818181', 'Tolga', 'Balcı', 'Erkek', '05412345694', '1988-12-05', 'tolga.balci@example.com', '15', '5', 'Yazılım geliştirici', 'password17', 'Yazılım Uzmanı', '2016-05-01', '2016-05-01', NULL, 7200, 1, 2, 2, 2, 2, 2, 2, 2),
(18, '19191919191', 'İrem', 'Uçar', 'Kadın', '05412345695', '1997-08-08', 'irem.ucar@example.com', '23', '4', 'Kalite kontrol', 'password18', 'Kalite Kontrol Uzmanı', '2021-06-01', '2021-06-01', NULL, 4900, 1, 3, 3, 3, 3, 3, 3, 3),
(19, '20191919191', 'Melis', 'Orhan', 'Kadın', '05412345696', '1992-03-03', 'melis.orhan@example.com', '29', '9', 'Hukuk danışmanı', 'password19', 'Hukuk Danışmanı', '2018-02-01', '2018-02-01', NULL, 8000, 1, 4, 4, 4, 4, 4, 4, 4),
(20, '20202020202', 'Can', 'Demir', 'Erkek', '05412345697', '1991-11-21', 'can.demir@example.com', '30', '7', 'Proje yöneticisi', 'password20', 'Proje Yönetici', '2016-01-01', '2016-01-01', NULL, 9500, 1, 5, 5, 5, 5, 5, 5, 5);

INSERT INTO tblKullanici (ID, TC, Ad, Soyad, Cinsiyet, DogumTarihi, TelefonNumarasi, Email, Sifre, HesapDurumu, AdresAciklamasi, KullaniciTuruID, SehirID, IlceID, UlkeID)
VALUES
(1, '12345678901', 'Ali', 'Yılmaz', 'Male', '1990-01-01', '05411234501', 'ali.yilmaz@example.com', 'password1', 1, 'Kadıköy, Moda', 1, 1, 1, 1),
(2, '12345678902', 'Ayşe', 'Kaya', 'Female', '1992-03-15', '05411234502', 'ayse.kaya@example.com', 'password2', 1, 'Üsküdar, Salacak', 2, 1, 1, 1),
(3, '12345678903', 'Mehmet', 'Demir', 'Male', '1985-06-20', '05411234503', 'mehmet.demir@example.com', 'password3', 1, 'Beşiktaş, Balmumcu', 3, 1, 1, 1),
(4, '12345678904', 'Zeynep', 'Çelik', 'Female', '1997-02-25', '05411234504', 'zeynep.celik@example.com', 'password4', 1, 'Şişli, Mecidiyeköy', 4, 1, 1, 1),
(5, '12345678905', 'Emre', 'Şahin', 'Male', '1988-11-11', '05411234505', 'emre.sahin@example.com', 'password5', 1, 'Kadıköy, Fenerbahçe', 5, 1, 1, 1),
(6, '12345678906', 'User6', 'Example', 'Male', '1980-01-01', '05411234506', 'user6@example.com', 'password6', 1, 'Some Address 6', 3, 1, 1, 1),
(7, '12345678907', 'Elif', 'Koç', 'Female', '1995-05-05', '05411234507', 'elif.koc@example.com', 'password7', 1, 'Bakırköy, Ataköy', 1, 1, 1, 1),
(8, '12345678908', 'Cem', 'Arslan', 'Male', '1989-07-15', '05411234508', 'cem.arslan@example.com', 'password8', 1, 'Ümraniye, Dudullu', 2, 1, 1, 1),
(9, '12345678909', 'Selin', 'Aslan', 'Female', '1993-08-18', '05411234509', 'selin.aslan@example.com', 'password9', 1, 'Sarıyer, Maslak', 4, 1, 1, 1),
(10, '12345678910', 'User10', 'Example', 'Male', '2000-01-01', '05411234510', 'user10@example.com', 'password10', 1, 'Some Address 10', 3, 1, 1, 1),
(11, '12345678911', 'Yusuf', 'Yıldız', 'Male', '1990-10-10', '05411234511', 'yusuf.yildiz@example.com', 'password11', 1, 'Kartal, Soğanlık', 5, 1, 1, 1),
(12, '12345678912', 'Burcu', 'Çelik', 'Female', '1994-12-12', '05411234512', 'burcu.celik@example.com', 'password12', 1, 'Maltepe, Küçükyalı', 1, 1, 1, 1),
(13, '12345678913', 'Mert', 'Eren', 'Male', '1992-04-04', '05411234513', 'mert.eren@example.com', 'password13', 1, 'Ataşehir, Barbaros', 2, 1, 1, 1),
(14, '12345678914', 'Ece', 'Gül', 'Female', '1987-03-03', '05411234514', 'ece.gul@example.com', 'password14', 1, 'Bağcılar, Güneşli', 4, 1, 1, 1),
(15, '12345678915', 'Ahmet', 'Özkan', 'Male', '1985-02-28', '05411234515', 'ahmet.ozkan@example.com', 'password15', 1, 'Esenler, Turgutreis', 5, 1, 1, 1),
(16, '12345678916', 'Duygu', 'Uçar', 'Female', '1996-01-01', '05411234516', 'duygu.ucar@example.com', 'password16', 1, 'Kadıköy, Kozyatağı', 3, 1, 1, 1),
(17, '12345678917', 'Hakan', 'Kar', 'Male', '1983-09-09', '05411234517', 'hakan.kar@example.com', 'password17', 1, 'Beylikdüzü, Cumhuriyet', 1, 1, 1, 1),
(18, '12345678918', 'Buse', 'Orhan', 'Female', '1998-07-07', '05411234518', 'buse.orhan@example.com', 'password18', 1, 'Zeytinburnu, Topkapı', 2, 1, 1, 1),
(19, '12345678919', 'Eren', 'Uzun', 'Male', '1981-06-06', '05411234519', 'eren.uzun@example.com', 'password19', 1, 'Beyoğlu, Taksim', 4, 1, 1, 1),
(20, '12345678920', 'Deniz', 'Kara', 'Female', '1999-05-05', '05411234520', 'deniz.kara@example.com', 'password20', 1, 'Kadıköy, Moda', 5, 1, 1, 1);
INSERT INTO tblOdaOzelligi (ID, Ad, Aciklama)
VALUES
(1, 'Klima', 'Oda içerisinde klima bulunmaktadır.'),
(2, 'Engelli Dostu', 'Engelli misafirler için uygun tasarım.'),
(3, 'Minibar', 'Odada minibar bulunmaktadır.'),
(4, 'Wi-Fi', 'Ücretsiz kablosuz internet bağlantısı mevcuttur.'),
(5, 'Televizyon', 'Oda içerisinde düz ekran televizyon bulunmaktadır.'),
(6, 'Balkon', 'Manzaralı balkon mevcuttur.'),
(7, 'Çalışma Masası', 'Odada çalışma masası bulunmaktadır.'),
(8, 'Kasa', 'Değerli eşyalarınızı koyabileceğiniz güvenlik kasası.'),
(9, 'Bornoz ve Terlik', 'Misafirler için bornoz ve terlik sağlanmaktadır.'),
(10, 'Saç Kurutma Makinesi', 'Odada saç kurutma makinesi bulunmaktadır.'),
(11, 'Kettle', 'Çay ve kahve hazırlamak için su ısıtıcısı.'),
(12, 'Uyandırma Servisi', 'Misafirler için uyandırma hizmeti.'),
(13, 'Isıtma', 'Odada merkezi ısıtma sistemi bulunmaktadır.'),
(14, 'Klima', 'Oda içerisinde klima bulunmaktadır.'),
(15, 'Oda Servisi', '24 saat oda servisi mevcuttur.'),
(16, 'Engelli Erişimi', 'Engelli misafirler için özel erişim.'),
(17, 'Ses Yalıtımı', 'Odada ses yalıtımı bulunmaktadır.'),
(18, 'Çamaşırhane Hizmeti', 'Misafirler için çamaşırhane hizmeti sağlanmaktadır.'),
(19, 'Jakuzi', 'Odada jakuzi bulunmaktadır.'),
(20, 'Akıllı Oda Teknolojisi', 'Oda, akıllı teknolojilerle donatılmıştır.');

INSERT INTO tblOdaUcreti (ID, Fiyat, BaslangicTarihi, BitisTarihi, OdaTuruID, OdaOzellikTuruID)
VALUES
(1, 150.00, '2024-12-01', '2024-12-31', 1, 1),
(2, 350.00, '2024-12-01', '2024-12-31', 5, 5),
(3, 200.00, '2024-12-01', '2024-12-31', 2, 2),
(4, 400.00, '2024-12-01', '2024-12-31', 4, 4),
(5, 180.00, '2024-11-01', '2024-11-30', 1, 3),
(6, 300.00, '2024-11-01', '2024-11-30', 3, 5),
(7, 220.00, '2024-10-01', '2024-10-31', 2, 1),
(8, 500.00, '2024-10-01', '2024-10-31', 5, 4),
(9, 270.00, '2024-09-01', '2024-09-30', 3, 2),
(10, 450.00, '2024-09-01', '2024-09-30', 5, 3),
(11, 120.00, '2024-08-01', '2024-08-31', 1, 2),
(12, 320.00, '2024-08-01', '2024-08-31', 4, 4),
(13, 250.00, '2024-07-01', '2024-07-31', 3, 1),
(14, 420.00, '2024-07-01', '2024-07-31', 5, 5),
(15, 190.00, '2024-06-01', '2024-06-30', 2, 3),
(16, 360.00, '2024-06-01', '2024-06-30', 4, 2),
(17, 170.00, '2024-05-01', '2024-05-31', 1, 1),
(18, 330.00, '2024-05-01', '2024-05-31', 3, 4),
(19, 280.00, '2024-04-01', '2024-04-30', 2, 5),
(20, 600.00, '2024-04-01', '2024-04-30', 5, 2);

INSERT INTO tblOda (ID, Numara, Ozellik, Kat, DolulukDurumu, RezervasyonID, OtelID, OdaTuruID)
VALUES
(1, 101, 'Deniz manzaralı', 1, 0, 9, 1, 1),
(2, 102, 'Havuz manzaralı', 2, 1, 1, 1, 2),
(3, 103, 'Lüks süit', 3, 0, 10, 2, 3),
(4, 104, 'Standart oda', 1, 1, 2, 2, 4),
(5, 105, 'Bahçe manzaralı', 2, 0, 11, 2, 1),
(6, 106, 'Delüks oda', 1, 0, 12, 3, 2),
(7, 107, 'Şehir manzaralı', 3, 1, 3, 3, 3),
(8, 108, 'Aile odası', 1, 0, 13, 3, 4),
(9, 109, 'Küçük stüdyo', 2, 1, 4, 4, 1),
(10, 110, 'Balkonlu oda', 3, 0, 14, 4, 2),
(11, 111, 'Deniz manzaralı süit', 1, 0, 15, 4, 3),
(12, 112, 'Tek kişilik oda', 2, 1, 5, 5, 4),
(13, 113, 'Standart oda', 3, 0, 16, 5, 1),
(14, 114, 'Ekonomik oda', 1, 1, 6, 1, 2),
(15, 115, 'Lüks villa', 2, 0, 17, 2, 3),
(16, 116, 'Kral dairesi', 3, 0, 18, 3, 4),
(17, 117, 'Bahçe manzaralı oda', 1, 1, 7, 4, 1),
(18, 118, 'Havuz kenarı oda', 2, 0, 19, 5, 2),
(19, 119, 'Tek kişilik balkonlu oda', 3, 1, 8, 1, 3),
(20, 120, 'Villa, özel havuzlu', 2, 0, 20, 5, 5);



INSERT INTO tblTemizlikPlani (ID, BitisTarihi, BaslangicTarihi, PersonelID, OdaID)
VALUES
(1, '2024-12-10', '2024-12-01', 1, 101),
(2, '2024-12-14', '2024-12-05', 5, 301),
(3, '2024-11-20', '2024-11-15', 2, 102),
(4, '2024-11-25', '2024-11-20', 3, 302),
(5, '2024-10-05', '2024-10-01', 4, 103),
(6, '2024-10-12', '2024-10-08', 6, 303),
(7, '2024-09-10', '2024-09-05', 1, 104),
(8, '2024-09-20', '2024-09-15', 5, 304),
(9, '2024-08-15', '2024-08-10', 3, 105),
(10, '2024-08-25', '2024-08-20', 2, 305),
(11, '2024-07-10', '2024-07-05', 4, 106),
(12, '2024-07-20', '2024-07-15', 6, 306),
(13, '2024-06-10', '2024-06-05', 1, 107),
(14, '2024-06-20', '2024-06-15', 5, 307),
(15, '2024-05-05', '2024-05-01', 3, 108),
(16, '2024-05-12', '2024-05-08', 2, 308),
(17, '2024-04-10', '2024-04-05', 4, 109),
(18, '2024-04-20', '2024-04-15', 6, 309),
(19, '2024-03-10', '2024-03-05', 1, 110),
(20, '2024-03-20', '2024-03-15', 5, 310);


INSERT INTO tblYorum (ID, Tarih, Aciklama, KullaniciID, OtelID)
VALUES
(1, GETDATE(), 'Great service and clean rooms.', 1, 1),
(2, GETDATE(), 'Would recommend to friends!', 5, 5),
(3, GETDATE(), 'Excellent location and staff.', 2, 1),
(4, GETDATE(), 'Clean rooms and tasty breakfast.', 3, 2),
(5, GETDATE(), 'Affordable and comfortable stay.', 4, 3),
(6, GETDATE(), 'Loved the spa facilities.', 6, 5),
(7, GETDATE(), 'Polite staff and quick check-in.', 7, 4),
(8, GETDATE(), 'Rooms are spacious and well-kept.', 8, 3),
(9, GETDATE(), 'Would definitely visit again.', 9, 1),
(10, GETDATE(), 'Very peaceful and relaxing.', 10, 2),
(11, GETDATE(), 'Breakfast options were limited.', 2, 4),
(12, GETDATE(), 'Conveniently located near the city.', 3, 1),
(13, GETDATE(), 'Room service could be better.', 5, 2),
(14, GETDATE(), 'Beautiful views from the room.', 6, 3),
(15, GETDATE(), 'Staff was very accommodating.', 8, 5),
(16, GETDATE(), 'Parking space was limited.', 7, 4),
(17, GETDATE(), 'Family-friendly atmosphere.', 9, 1),
(18, GETDATE(), 'Had a fantastic stay here.', 10, 2),
(19, GETDATE(), 'Wi-Fi connection was slow.', 2, 3),
(20, GETDATE(), 'Will recommend to everyone.', 4, 5);

INSERT INTO tblEkHizmet (ID, Fiyat, Aciklama, OtelID)
VALUES
(1, 200, 'Airport Shuttle Service', 1),
(2, 50, 'Extra Towels and Amenities', 5),
(3, 100, 'Breakfast in Bed', 2),
(4, 150, 'Private Pool Access', 3),
(5, 75, 'Laundry Service', 4),
(6, 300, 'All-inclusive Meals', 5),
(7, 50, 'Early Check-in', 1),
(8, 100, 'Late Check-out', 2),
(9, 500, 'Luxury Spa Package', 5),
(10, 200, 'Car Rental', 3),
(11, 20, 'Daily Newspaper', 4),
(12, 80, 'Room Decoration for Events', 1),
(13, 150, 'Babysitting Service', 3),
(14, 250, 'Airport VIP Lounge Access', 2),
(15, 30, 'Special Event Photography', 4),
(16, 60, 'Local Tour Guide', 5),
(17, 40, 'On-site Fitness Trainer', 2),
(18, 90, 'Pet Care Service', 3),
(19, 200, 'Special Dinner Arrangement', 1),
(20, 350, 'VIP Club Access', 5);

INSERT INTO tblRezervasyonMisafir (ID, RezervasyonID, MisafirID)
VALUES
(1, 2001, 1), -- RezervasyonID ve MisafirID mevcut olmalı
(2, 2005, 5),
(3, 2002, 2),
(4, 2006, 6),
(5, 2003, 3),
(6, 2007, 7),
(7, 2004, 4),
(8, 2008, 8),
(9, 2009, 9),
(10, 2010, 10),
(11, 2011, 11),
(12, 2012, 12),
(13, 2013, 13),
(14, 2014, 14),
(15, 2015, 15),
(16, 2016, 16),
(17, 2017, 17),
(18, 2018, 18),
(19, 2019, 19),
(20, 2020, 20);

INSERT INTO tblOdemeTuruOtel (ID, OdemeTuruID, OtelID)
VALUES
(1, 1, 1), -- Cash payment option for Hotel 1
(2, 2, 1), -- Mobile payment option for Hotel 1
(3, 1, 2), -- Cash payment option for Hotel 2
(4, 2, 2), -- Mobile payment option for Hotel 2
(5, 1, 3), -- Cash payment option for Hotel 3
(6, 2, 3), -- Mobile payment option for Hotel 3
(7, 1, 4), -- Cash payment option for Hotel 4
(8, 2, 4), -- Mobile payment option for Hotel 4
(9, 1, 5), -- Cash payment option for Hotel 5
(10, 2, 5), -- Mobile payment option for Hotel 5
(11, 1, 6), -- Cash payment option for Hotel 6
(12, 2, 6), -- Mobile payment option for Hotel 6
(13, 1, 7), -- Cash payment option for Hotel 7
(14, 2, 7), -- Mobile payment option for Hotel 7
(15, 1, 8), -- Cash payment option for Hotel 8
(16, 2, 8), -- Mobile payment option for Hotel 8
(17, 1, 9), -- Cash payment option for Hotel 9
(18, 2, 9), -- Mobile payment option for Hotel 9
(19, 1, 10), -- Cash payment option for Hotel 10
(20, 2, 10); -- Mobile payment option for Hotel 10

INSERT INTO tblOtelHizmetiOtel (ID, OtelHizmetiID, OtelID)
VALUES
(1, 1, 1), -- Room service for Hotel 1
(2, 2, 1), -- Spa service for Hotel 1
(3, 1, 2), -- Room service for Hotel 2
(4, 2, 2), -- Spa service for Hotel 2
(5, 1, 3), -- Room service for Hotel 3
(6, 2, 3), -- Spa service for Hotel 3
(7, 1, 4), -- Room service for Hotel 4
(8, 2, 4), -- Spa service for Hotel 4
(9, 1, 5), -- Room service for Hotel 5
(10, 2, 5), -- Spa service for Hotel 5
(11, 1, 6), -- Room service for Hotel 6
(12, 2, 6), -- Spa service for Hotel 6
(13, 1, 7), -- Room service for Hotel 7
(14, 2, 7), -- Spa service for Hotel 7
(15, 1, 8), -- Room service for Hotel 8
(16, 2, 8), -- Spa service for Hotel 8
(17, 1, 9), -- Room service for Hotel 9
(18, 2, 9), -- Spa service for Hotel 9
(19, 1, 10), -- Room service for Hotel 10
(20, 2, 10); -- Spa service for Hotel 10


INSERT INTO tblOdaOzelligiOdaTuru (ID, OdaOzelligiID, OdaTuruID)
VALUES
(1, 1, 1), -- Klima feature for Room Type 1
(2, 2, 1), -- Engelli Dostu feature for Room Type 1
(3, 1, 2), -- Klima feature for Room Type 2
(4, 2, 2), -- Engelli Dostu feature for Room Type 2
(5, 1, 3), -- Klima feature for Room Type 3
(6, 2, 3), -- Engelli Dostu feature for Room Type 3
(7, 1, 4), -- Klima feature for Room Type 4
(8, 2, 4), -- Engelli Dostu feature for Room Type 4
(9, 1, 5), -- Klima feature for Room Type 5
(10, 2, 5), -- Engelli Dostu feature for Room Type 5
(11, 1, 6), -- Klima feature for Room Type 6
(12, 2, 6), -- Engelli Dostu feature for Room Type 6
(13, 1, 7), -- Klima feature for Room Type 7
(14, 2, 7), -- Engelli Dostu feature for Room Type 7
(15, 1, 8), -- Klima feature for Room Type 8
(16, 2, 8), -- Engelli Dostu feature for Room Type 8
(17, 1, 9), -- Klima feature for Room Type 9
(18, 2, 9), -- Engelli Dostu feature for Room Type 9
(19, 1, 10), -- Klima feature for Room Type 10
(20, 2, 10); -- Engelli Dostu feature for Room Type 10

INSERT INTO tblOdaFiyati (ID, Fiyat, GirisTarihi, CikisTarihi)
VALUES
(1, 150, '2024-12-01', '2024-12-02'),
(2, 350, '2024-12-16', '2024-12-20'),
(3, 200, '2024-12-03', '2024-12-05'),
(4, 300, '2024-12-21', '2024-12-25'),
(5, 250, '2024-12-06', '2024-12-10'),
(6, 400, '2024-12-26', '2024-12-30'),
(7, 180, '2024-12-11', '2024-12-12'),
(8, 320, '2024-12-31', '2025-01-02'),
(9, 220, '2024-12-13', '2024-12-14'),
(10, 450, '2025-01-03', '2025-01-07'),
(11, 160, '2024-12-15', '2024-12-16'),
(12, 340, '2025-01-08', '2025-01-12'),
(13, 230, '2024-12-17', '2024-12-18'),
(14, 410, '2025-01-13', '2025-01-15'),
(15, 270, '2024-12-19', '2024-12-20'),
(16, 460, '2025-01-16', '2025-01-20'),
(17, 190, '2024-12-21', '2024-12-22'),
(18, 370, '2025-01-21', '2025-01-25'),
(19, 240, '2024-12-23', '2024-12-24'),
(20, 480, '2025-01-26', '2025-01-30');


INSERT INTO tblRezervasyon (ID, RezervasyonNumarasi, CheckinTarihi, CheckoutTarihi, RezervasyonTarihi, GunSayisi, GunlukUcret, BurutUcret, IndirimToplami, NetUcret, ToplamEkstraUcret, ToplamTutar, OdaTuru, Aciklama, KullaniciID, OdaTuruID, PersonelID)
VALUES
(1, 2001, '2024-12-05', '2024-12-10', '2024-12-01', 5, 200.00, 1000.00, 100.00, 900.00, 50.00, 950.00, 'Double', 'Business trip', 1, 1, 1),
(2, 2005, '2024-12-20', '2024-12-25', '2024-12-01', 5, 300.00, 1500.00, 150.00, 1350.00, 80.00, 1430.00, 'Double', 'Holiday vacation', 5, 5, 5),
(3, 2002, '2024-12-05', '2024-12-08', '2024-12-01', 3, 250.00, 750.00, 75.00, 675.00, 40.00, 715.00, 'Single', 'Conference stay', 2, 2, 2),
(4, 2006, '2024-12-10', '2024-12-15', '2024-12-02', 5, 220.00, 1100.00, 120.00, 980.00, 60.00, 1040.00, 'Double', 'Family vacation', 3, 3, 3),
(5, 2003, '2024-12-15', '2024-12-20', '2024-12-03', 5, 280.00, 1400.00, 140.00, 1260.00, 70.00, 1330.00, 'Suite', 'Wedding anniversary', 4, 4, 4),
(6, 2007, '2024-12-18', '2024-12-22', '2024-12-04', 4, 320.00, 1280.00, 130.00, 1150.00, 90.00, 1240.00, 'Double', 'Holiday trip', 5, 5, 5),
(7, 2004, '2024-12-12', '2024-12-17', '2024-12-02', 5, 210.00, 1050.00, 105.00, 945.00, 50.00, 995.00, 'Single', 'Business trip', 6, 6, 6),
(8, 2010, '2024-12-01', '2024-12-05', '2024-11-30', 4, 250.00, 1000.00, 100.00, 900.00, 60.00, 960.00, 'Double', 'Conference stay', 7, 7, 7),
(9, 2011, '2024-12-05', '2024-12-08', '2024-12-01', 3, 270.00, 810.00, 80.00, 730.00, 40.00, 770.00, 'Single', 'Training session', 8, 8, 8),
(10, 2012, '2024-12-15', '2024-12-20', '2024-12-02', 5, 300.00, 1500.00, 150.00, 1350.00, 100.00, 1450.00, 'Suite', 'Leisure trip', 9, 9, 9),
(11, 2013, '2024-12-22', '2024-12-27', '2024-12-01', 5, 350.00, 1750.00, 175.00, 1575.00, 120.00, 1695.00, 'Double', 'Business event', 10, 10, 10),
(12, 2014, '2024-12-18', '2024-12-23', '2024-12-05', 5, 260.00, 1300.00, 130.00, 1170.00, 80.00, 1250.00, 'Double', 'Vacation with family', 11, 11, 11),
(13, 2015, '2024-12-10', '2024-12-15', '2024-12-02', 5, 230.00, 1150.00, 115.00, 1035.00, 70.00, 1105.00, 'Single', 'Holiday trip', 12, 12, 12),
(14, 2016, '2024-12-12', '2024-12-17', '2024-12-05', 5, 220.00, 1100.00, 110.00, 990.00, 60.00, 1050.00, 'Double', 'Business seminar', 13, 13, 13),
(15, 2017, '2024-12-07', '2024-12-12', '2024-12-03', 5, 240.00, 1200.00, 120.00, 1080.00, 70.00, 1150.00, 'Suite', 'Relaxing weekend', 14, 14, 14),
(16, 2018, '2024-12-01', '2024-12-06', '2024-11-30', 5, 280.00, 1400.00, 140.00, 1260.00, 90.00, 1350.00, 'Double', 'Wedding stay', 15, 15, 15),
(17, 2019, '2024-12-15', '2024-12-20', '2024-12-04', 5, 300.00, 1500.00, 150.00, 1350.00, 80.00, 1430.00, 'Double', 'Business trip', 16, 16, 16),
(18, 2020, '2024-12-10', '2024-12-15', '2024-12-02', 5, 250.00, 1250.00, 125.00, 1125.00, 70.00, 1195.00, 'Single', 'Business event', 17, 17, 17),
(19, 2021, '2024-12-05', '2024-12-10', '2024-12-01', 5, 220.00, 1100.00, 110.00, 990.00, 60.00, 1050.00, 'Double', 'Leisure trip', 18, 18, 18),
(20, 2022, '2024-12-20', '2024-12-25', '2024-12-05', 5, 310.00, 1550.00, 155.00, 1395.00, 100.00, 1495.00, 'Suite', 'Holiday vacation', 19, 19, 19);


INSERT INTO tblMisafir (ID, TC, Ad, Soyad, DogumTarihi, Cinsiyet, OdaID)
VALUES
(1, '11111111112', 'Ahmet', 'Yılmaz', '1990-01-01', 'Erkek', 101),
(2, '22222222223', 'Ali', 'Bulut', '1985-05-15', 'Erkek', 102),
(3, '33333333334', 'Merve', 'Kaya', '1993-03-10', 'Kadın', 103),
(4, '44444444445', 'Ece', 'Altun', '1995-07-07', 'Kadın', 104),
(5, '55555555556', 'Berk', 'Demir', '1990-10-10', 'Erkek', 105),
(6, '66666666667', 'Deniz', 'Arslan', '1992-02-14', 'Kadın', 106),
(7, '77777777778', 'Ayşe', 'Koç', '1994-06-22', 'Kadın', 107),
(8, '88888888889', 'Cem', 'Tuna', '1988-12-05', 'Erkek', 108),
(9, '99999999990', 'Selin', 'Güneş', '1996-08-19', 'Kadın', 109),
(10, '10101010101', 'Furkan', 'Aksoy', '1991-03-27', 'Erkek', 110),
(11, '11111111113', 'Zeynep', 'Çelik', '1997-04-15', 'Kadın', 111),
(12, '12121212121', 'Emre', 'Baysal', '1990-09-03', 'Erkek', 112),
(13, '13131313131', 'Melis', 'Yıldız', '1995-11-23', 'Kadın', 113),
(14, '14141414141', 'Kerem', 'Demir', '1987-07-07', 'Erkek', 114),
(15, '15151515151', 'Elif', 'Sezer', '1992-05-30', 'Kadın', 115),
(16, '16161616161', 'Onur', 'Taş', '1993-01-11', 'Erkek', 116),
(17, '17171717171', 'Burak', 'Deniz', '1989-04-09', 'Erkek', 117),
(18, '18181818181', 'Naz', 'Akın', '1996-06-25', 'Kadın', 118),
(19, '19191919191', 'Ege', 'Kara', '1990-02-20', 'Erkek', 119),
(20, '20202020206', 'Can', 'Demir', '1991-11-21', 'Erkek', 120);
