CREATE DATABASE KUTUPHANELER;
use KUTUPHANELER;

CREATE TABLE UYELER(
    UYENO int not null primary key identity(1,1),
    UYEADI nvarchar(50) not null,
    UYESOYADI nvarchar(50) not null,
    EPOSTA nvarchar(100) not null,
    CINSIYET char(1),
    TELEFON char(11)
);

CREATE TABLE ADRESLER(
    ADRESNO int not null primary key identity(1,1),
    SEHIR nvarchar(50),
    MAHALLE nvarchar(100),
    BINANO int,
    CADDE nvarchar(200),
    ULKE nvarchar(50),
    POSTAKODU int
);

CREATE TABLE KUTUPHANE(
    KUTUPHANENO int not null primary key identity(1,1),
    KUTUPAHENEISMI nvarchar(150),
    ACIKLAMA nvarchar(500)
);

CREATE TABLE KITAPLAR(
    SAYFASAYISI int,
    KITAPADI nvarchar(100),
    ISBN nvarchar(13) primary key not null,
    YAYINTARIHI datetime
);

CREATE TABLE EMANET(
    EMANETTARIHI datetime,
    EMANETNO int primary key identity(1,1) not null,
    TESLIMTARIHI datetime

);

CREATE TABLE KATEGORILER(
    KATEGORINO int primary key identity(1,1) not null,
    KATEGORIADI nvarchar(50)
);

CREATE TABLE YAZARLAR(
    YAZARNO int primary key identity(1,1) not null,
    YAZARADI nvarchar(30),
    YAZARSOYADI nvarchar(20)
);

CREATE TABLE KUTUPHANE_KITAP (
    KUTUPHANENO int,
    ISBN nvarchar(13),
    MIKTAR INT,
    PRIMARY KEY (KUTUPHANENO, ISBN),
    FOREIGN KEY (KUTUPHANENO) REFERENCES KUTUPHANE(KUTUPHANENO),
    FOREIGN KEY (ISBN) REFERENCES KITAPLAR(ISBN)
);

CREATE TABLE KITAP_KATEGORI (
    ISBN nvarchar(13),
    KATEGORINO int,
    PRIMARY KEY (ISBN, KATEGORINO),
    FOREIGN KEY (ISBN) REFERENCES KITAPLAR(ISBN),
    FOREIGN KEY (KATEGORINO) REFERENCES KATEGORILER(KATEGORINO)
);

CREATE TABLE KITAP_YAZAR (
    ISBN nvarchar(13),
    YAZARNO int,
    PRIMARY KEY (ISBN, YAZARNO),
    FOREIGN KEY (ISBN) REFERENCES KITAPLAR(ISBN),
    FOREIGN KEY (YAZARNO) REFERENCES YAZARLAR(YAZARNO)
);




ALTER TABLE ADRESLER
    ADD KUTUPHANENO INT CONSTRAINT FK_ADRES_KUTUPHANE FOREIGN KEY (KUTUPHANENO) REFERENCES KUTUPHANE (KUTUPHANENO);

ALTER TABLE ADRESLER
    ADD UYENO INT CONSTRAINT FK_ADRES_UYE FOREIGN KEY (UYENO) REFERENCES UYELER(UYENO);

ALTER TABLE EMANET
    ADD UYENO INT CONSTRAINT FK_EMANET_UYE FOREIGN KEY (UYENO) REFERENCES UYELER (UYENO);

ALTER TABLE EMANET
    ADD KUTUPHANENO INT CONSTRAINT FK_EMANET_KUTUPHANE FOREIGN KEY (KUTUPHANENO) REFERENCES KUTUPHANE(KUTUPHANENO);

ALTER TABLE EMANET
    ADD ISBN NVARCHAR(13) CONSTRAINT FK_EMANET_KITAP FOREIGN KEY (ISBN) REFERENCES KITAPLAR(ISBN);