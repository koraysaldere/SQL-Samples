
--VIEW OLUÞTURMA 

Create View PersonelSatis As 
Select Per.PersonelID, Adi, SoyAdi, Satis.SatisID, Satis.SatisTarihi, Satis.NakliyeUcreti  From Personeller as Per Inner Join Satislar as Satis
ON 
Per.PersonelID = Satis.PersonelID


--VIEW NORMAL TABLO OLARAK CAGIRILABILIYOR

Select * From PersonelSatis as Per Where Adi = 'Michael' Order By Per.NakliyeUcreti Desc






  @Then("^(?:I )?see with escape character (.*)$")
    public void test1(String str) {



        System.out.println(str);

    }
    @Given("^(?:I )?see number (\\d+)$")

    public void test2(int nmbr){





    }
    @Given("^(?:I )?see (\\d+(?:\\.\\d+)?)$")
    public void test3(int nmbr1) {
        System.out.println(nmbr1);

    }

