
 -- Inner Join ile 2 farkl� tabloyu birle�tirme 

 Select  Person.PersonelID, Person.Adi, Person.SoyAdi, Satis.SatisID, Satis.SatisTarihi From Personeller as Person Inner join Satislar as Satis on Person.PersonelID = Satis.PersonelID


 -- TOP KOMUTU 

 SELECT TOP 10  * FROM Musteriler

 SELECT TOP 10 PERCENT * FROM Musteriler


-- DISTINCT KOMUTU : BENZER SATIR YADA STUNLARI B�RLE�T�R�R

Select Distinct Sehir From Personeller

-- SIRALAMA ORDER BY

SELECT PersonelID, Adi, SoyAdi, DogumTarihi FROM Personeller ORDER BY Adi ASC

SELECT PersonelID, Adi, SoyAdi, DogumTarihi FROM Personeller ORDER BY Adi DESC

--  GRUPLAMA  : Group By 

Select KategoriID, COUNT(*) From Urunler Group By KategoriID

Select PersonelID, COUNT(*) From Satislar Group By PersonelID 


 -- AGGREGATE FONKS�YONLARI
 
 -- AVG ORTALAMA ALMA

Select AVG(PersonelID) From Personeller
 
 -- MAX EN B�Y�K DE�ER� BULMA

Select MAX(PersonelID) From Personeller
 
 -- M�N EN K���K DE�ER� BULMA

Select MIN(PersonelID) From Personeller
 
 -- COUNT TOPLAM (KOLON VS) SAYISINI BULMA

Select COUNT(*) From Personeller
Select COUNT(PersonelID) From Personeller
 
 -- SUM TOPLAMINI BULMA

 Select SUM(NakliyeUcreti) From Satislar



 -- TAR�H FONKS�YONLARI

 Select GETDATE()

