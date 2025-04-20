 USE OTEL_REZERVASYON;

IF DB_ID('OTEL_REZERVASYON') IS NOT NULL
    BEGIN
        ALTER DATABASE [OTEL_REZERVASYON] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
        USE master
        DROP DATABASE OTEL_REZERVASYON
    END
GO

CREATE DATABASE OTEL_REZERVASYON
    ON PRIMARY (
        NAME = 'OTEL_REZERVASYONdb',
        FILENAME = 'c:\database\OTEL_REZERVASYON_db.mdf',
        SIZE = 5MB,
        MAXSIZE = 100MB,
        FILEGROWTH = 5MB
    )
    LOG ON (
        NAME = 'OTEL_REZERVASYONdb_log',
        FILENAME = 'c:\database\OTEL_REZERVASYON_log.ldf',
        SIZE = 2MB,
        MAXSIZE = 50MB,
        FILEGROWTH = 1MB
    )
GO

USE OTEL_REZERVASYON;

-- Creating tables with proper foreign key references
CREATE TABLE tblUlke
(
    ID INT PRIMARY KEY,
    Ad VARCHAR(30) NOT NULL
)
GO

CREATE TABLE tblSehir
(
    ID INT PRIMARY KEY,
    Ad VARCHAR(30) NOT NULL,
    UlkeID INT
)
GO

CREATE TABLE tblIlce
(
    ID INT PRIMARY KEY,
    Ad VARCHAR(30) NOT NULL,
    SehirID INT
)
GO

CREATE TABLE tblMahalle
(
    ID INT PRIMARY KEY,
    Ad VARCHAR(30) NOT NULL,
    IlceID INT
)
GO

CREATE TABLE tblOtel
(
    ID INT PRIMARY KEY,
    Ad VARCHAR(30) NOT NULL,
    Aciklama CHAR(100),
    Yildiz SMALLINT,
    Telefon VARCHAR(11) NOT NULL,
    Fax VARCHAR(10),
    Enlem FLOAT,
    Boylam FLOAT,
    WebSitesi VARCHAR(30) NOT NULL,
    Email VARCHAR(30) NOT NULL,
    KullaniciPuani SMALLINT,
    CheckinSaati TIME,
    CheckoutSaati TIME,
    UcretsizBebekYasi SMALLINT,
    UcretsizCocukYasi SMALLINT,
    EvcilHayvan SMALLINT,
    SigaraAlani SMALLINT,
    KahvaltiBaslangicSaati TIME,
    KahvaltiBitisSaati TIME,
    OgleYemegiBaslangicSaati TIME,
    OgleYemegiBitisSaati TIME,
    AksamYemegiBaslangicSaati TIME,
    AksamYemegiBitisSaati TIME,
    SehirID INT,
    IlceID INT,
    UlkeID INT
)
GO

CREATE TABLE tblOdaTuru
(
    ID INT PRIMARY KEY,
    Ad VARCHAR(30) NOT NULL,
    EnFazlaYatakSayisi INT NOT NULL,
    YatakSayisi INT NOT NULL,
    Aciklama VARCHAR(100),
    OtelID INT
)
GO

CREATE TABLE tblSokak
(
    ID INT PRIMARY KEY,
    Ad VARCHAR(30) NOT NULL,
    MahalleID INT,
    OdaTuruID INT
)
GO

CREATE TABLE tblOdemeTuru
(
    ID INT PRIMARY KEY,
    Ad VARCHAR(30)
)
GO

CREATE TABLE tblKullaniciTuru
(
    ID INT PRIMARY KEY,
    Ad VARCHAR(30) NOT NULL
)
GO

CREATE TABLE tblOtelHizmeti
(
    ID INT PRIMARY KEY,
    HizmetTuru VARCHAR(30) NOT NULL,
    Aciklama VARCHAR(100)
)
GO

CREATE TABLE tblOdaOzellikTuru
(
    ID INT PRIMARY KEY,
    Ad VARCHAR(30) NOT NULL,
    Aciklama VARCHAR(100)
)
GO

CREATE TABLE tblBolum
(
    ID INT PRIMARY KEY,
    Ad VARCHAR(30) NOT NULL
)
GO

CREATE TABLE tblGorev
(
    ID INT PRIMARY KEY,
    Ad VARCHAR(30) NOT NULL
)
GO

CREATE TABLE tblPozisyon
(
    ID INT PRIMARY KEY,
    Ad VARCHAR(30) NOT NULL
)
GO

CREATE TABLE tblHizmetTuru
(
    ID INT PRIMARY KEY,
    Ad VARCHAR(30) NOT NULL
)
GO

CREATE TABLE tblPersonel
(
    ID INT PRIMARY KEY,
    TC VARCHAR(11) UNIQUE NOT NULL,
    Ad VARCHAR(20) NOT NULL,
    Soyad VARCHAR(20) NOT NULL,
    Cinsiyet VARCHAR(10) NOT NULL,
    TelefonNumarasi VARCHAR(11) NOT NULL,
    DogumTarihi DATE,
    Email VARCHAR(50) NOT NULL,
    DiskapiNo VARCHAR(5) NOT NULL,
    IckapiNo VARCHAR(5) NOT NULL,
    Aciklama VARCHAR(100) NOT NULL,
    Sifre VARCHAR(50) NOT NULL,
    Pozisyon VARCHAR(50) NOT NULL,
    IseBaslamaTarihi DATE NOT NULL,
    AktifIseBaslamaTarihi DATE NOT NULL,
    CikisTarihi DATE NOT NULL,
    Maas SMALLINT NOT NULL,
    UlkeID INT,
    SehirID INT,
    OdaTurID INT,
    IlceID INT,
    MahalleID INT,
    SokakID INT,
    GorevID INT,
    BolumID INT
)
GO

CREATE TABLE tblKullanici
(
    ID INT PRIMARY KEY,
    TC VARCHAR(11) UNIQUE NOT NULL,
    Ad VARCHAR(30) NOT NULL,
    Soyad VARCHAR(30) NOT NULL,
    Cinsiyet VARCHAR(10) NOT NULL,
    DogumTarihi DATE NOT NULL,
    Yas AS DATEDIFF(yy, DogumTarihi, GETDATE()),
    TelefonNumarasi VARCHAR(11) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Sifre VARCHAR(50) NOT NULL,
    HesapDurumu BIT,
    AdresAciklamasi VARCHAR(100) NOT NULL,
    KullaniciTuruID INT,
    SehirID INT,
    IlceID INT,
    UlkeID INT
)
GO

CREATE TABLE tblRezervasyon
(
    ID INT PRIMARY KEY,
    RezervasyonNumarasi INT UNIQUE NOT NULL,
    CheckinTarihi DATE NOT NULL,
    CheckoutTarihi DATE NOT NULL,
    RezervasyonTarihi DATE NOT NULL,
    GunSayisi INT,
    GunlukUcret MONEY,
    BurutUcret MONEY,
    IndirimToplami MONEY,
    NetUcret MONEY,
    ToplamEkstraUcret MONEY,
    ToplamTutar MONEY,
    OdaTuru CHAR(100),
    Aciklama CHAR(100),
    KullaniciID INT,
    OdaTuruID INT,
    PersonelID INT,
	
)
GO

CREATE TABLE tblOda
(
    ID INT PRIMARY KEY,
    Numara INT UNIQUE NOT NULL,
    Ozellik VARCHAR(100),
    Kat INT,
    DolulukDurumu SMALLINT,
    RezervasyonID INT,
    OtelID INT,
    OdaTuruID INT
)
GO

CREATE TABLE tblOdaOzelligi
(
    ID INT PRIMARY KEY,
    Ad VARCHAR(30) NOT NULL,
    Aciklama VARCHAR(100)
)
GO

CREATE TABLE tblMisafir
(
    ID INT PRIMARY KEY,
    TC CHAR(11) UNIQUE NOT NULL,
    Ad VARCHAR(100) NOT NULL,
    Soyad VARCHAR(100) NOT NULL,
    DogumTarihi DATE NOT NULL,
    Cinsiyet VARCHAR(30) NOT NULL,
    OdaID INT
)
GO

CREATE TABLE tblOdaUcreti
(
    ID INT PRIMARY KEY,
    Fiyat MONEY NOT NULL,
    BaslangicTarihi DATE NOT NULL,
    BitisTarihi DATE NOT NULL,
    OdaTuruID INT,
    OdaOzellikTuruID INT
)
GO

CREATE TABLE tblTemizlikPlani
(
    ID INT PRIMARY KEY,
    BitisTarihi DATE NOT NULL,
    BaslangicTarihi DATE NOT NULL,
    PersonelID INT,
    OdaID INT
)
GO

CREATE TABLE tblYorum
(
    ID INT PRIMARY KEY,
    Tarih DATETIME DEFAULT GETDATE() NOT NULL,
    Aciklama VARCHAR(100),
    KullaniciID INT,
    OtelID INT
)
GO

CREATE TABLE tblEkHizmet
(
    ID INT PRIMARY KEY,
    Fiyat INT NOT NULL,
    Aciklama VARCHAR(100),
    OtelID INT
)
GO

CREATE TABLE tblRezervasyonMisafir
(
    ID INT PRIMARY KEY,
    RezervasyonID INT,
    MisafirID INT
)
GO

CREATE TABLE tblOdemeTuruOtel
(
    ID INT PRIMARY KEY,
    OdemeTuruID INT,
    OtelID INT
)
GO

CREATE TABLE tblOtelHizmetiOtel
(
    ID INT PRIMARY KEY,
    OtelHizmetiID INT,
    OtelID INT
)
GO

CREATE TABLE tblOdaOzelligiOdaTuru
(
    ID INT PRIMARY KEY,
    OdaOzelligiID INT,
    OdaTuruID INT
)
GO

CREATE TABLE tblOdaFiyati
(
    ID INT PRIMARY KEY,
    Fiyat INT NOT NULL,
    GirisTarihi DATE NOT NULL,
    CikisTarihi DATE NOT NULL
)
GO

