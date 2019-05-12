
--VIEW OLUÞTURMA 

Create View PersonelSatis As 
Select Per.PersonelID, Adi, SoyAdi, Satis.SatisID, Satis.SatisTarihi, Satis.NakliyeUcreti  From Personeller as Per Inner Join Satislar as Satis
ON 
Per.PersonelID = Satis.PersonelID


--VIEW NORMAL TABLO OLARAK CAGIRILABILIYOR

Select * From PersonelSatis as Per Where Adi = 'Michael' Order By Per.NakliyeUcreti Desc
