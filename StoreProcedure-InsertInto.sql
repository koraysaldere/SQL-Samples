-- STORE PROCEDURE / INSERT INTO

Create Procedure Sp_Insert 
(

	@Adi nvarchar(10),
	@SoyAdi nvarchar(20),
	@Unvan nvarchar(30)

)
As
Begin

Insert Into Personeller (Adi, SoyAdi, Unvan)
Values (@Adi, @SoyAdi, @Unvan)

End

-- STORE PROCEDURE / RUN INSERT INTO (Kayýt Ekleme)

Exec Sp_Insert 'Ahmet','Taþ','Bay'


