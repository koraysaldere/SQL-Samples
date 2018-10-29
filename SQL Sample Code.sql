
 -- Inner Join ile 2 farklý tabloyu birleþtirme 

 Select  Person.PersonelID, Person.Adi, Person.SoyAdi, Satis.SatisID, Satis.SatisTarihi From Personeller as Person Inner join Satislar as Satis on Person.PersonelID = Satis.PersonelID


 -- TOP KOMUTU 

 SELECT TOP 10  * FROM Musteriler

 SELECT TOP 10 PERCENT * FROM Musteriler


-- DISTINCT KOMUTU : BENZER SATIR YADA STUNLARI BÝRLEÞTÝRÝR

Select Distinct Sehir From Personeller

-- SIRALAMA ORDER BY

SELECT PersonelID, Adi, SoyAdi, DogumTarihi FROM Personeller ORDER BY Adi ASC

SELECT PersonelID, Adi, SoyAdi, DogumTarihi FROM Personeller ORDER BY Adi DESC

--  GRUPLAMA  : Group By 

Select KategoriID, COUNT(*) From Urunler Group By KategoriID

Select PersonelID, COUNT(*) From Satislar Group By PersonelID 


 -- AGGREGATE FONKSÝYONLARI
 
 -- AVG ORTALAMA ALMA

Select AVG(PersonelID) From Personeller
 
 -- MAX EN BÜYÜK DEÐERÝ BULMA

Select MAX(PersonelID) From Personeller
 
 -- MÝN EN KÜÇÜK DEÐERÝ BULMA

Select MIN(PersonelID) From Personeller
 
 -- COUNT TOPLAM (KOLON VS) SAYISINI BULMA

Select COUNT(*) From Personeller
Select COUNT(PersonelID) From Personeller
 
 -- SUM TOPLAMINI BULMA

 Select SUM(NakliyeUcreti) From Satislar



 -- TARÝH FONKSÝYONLARI

 Select GETDATE()

