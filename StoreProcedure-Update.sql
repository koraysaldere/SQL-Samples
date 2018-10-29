-- STORE PROCEDURE / UPDATE

Create Procedure Sp_Update 
(

	@PersonelID int,
	@Adi nvarchar(10),
	@SoyAdi nvarchar(20),
	@Unvan nvarchar(30)

)
As
Begin

Update Personeller
Set Adi= @Adi, SoyAdi = @SoyAdi, Unvan= @Unvan
Where PersonelID = @PersonelID

End

-- STORE PROCEDURE / RUN UPDATE(Kayýt Deðitirme)

Exec Sp_Update  10, 'Mehmet','Taþ','Bay'



