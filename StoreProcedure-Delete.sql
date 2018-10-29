-- STORE PROCEDURE / DELETE

Create Procedure Sp_Delete
(
	@PersonelID int
)
As
Begin

Delete From Personeller
Where PersonelID = @PersonelID

End

-- STORE PROCEDURE / RUN DELETE(Kayýt Silme)

Exec Sp_Delete 10




