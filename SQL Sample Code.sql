
 -- Inner Join ile 2 farkli tabloyu birlestirme 

 Select  Person.PersonelID, Person.Adi, Person.SoyAdi, Satis.SatisID, Satis.SatisTarihi From Personeller as Person Inner join Satislar as Satis on Person.PersonelID = Satis.PersonelID


 -- TOP KOMUTU 

 SELECT TOP 10  * FROM Musteriler

 SELECT TOP 10 PERCENT * FROM Musteriler


-- DISTINCT KOMUTU : BENZER SATIR YADA STUNLARI BIRLESTIRIR

Select Distinct Sehir From Personeller

-- SIRALAMA ORDER BY

SELECT PersonelID, Adi, SoyAdi, DogumTarihi FROM Personeller ORDER BY Adi ASC

SELECT PersonelID, Adi, SoyAdi, DogumTarihi FROM Personeller ORDER BY Adi DESC

--  GRUPLAMA  : Group By 

Select KategoriID, COUNT(*) From Urunler Group By KategoriID

Select PersonelID, COUNT(*) From Satislar Group By PersonelID 


 -- AGGREGATE FONKSIYONLARI
 
 -- AVG ORTALAMA ALMA

Select AVG(PersonelID) From Personeller
 
 -- MAX EN BÜYÜK DEGERI BULMA

Select MAX(PersonelID) From Personeller
 
 -- MIN EN KÜÇÜK DEGERI BULMA

Select MIN(PersonelID) From Personeller
 
 -- COUNT TOPLAM (KOLON VS) SAYISINI BULMA

Select COUNT(*) From Personeller
Select COUNT(PersonelID) From Personeller
 
 -- SUM TOPLAMINI BULMA

 Select SUM(NakliyeUcreti) From Satislar



 -- TARÝH FONKSÝYONLARI

 Select GETDATE()
 
Scenario: Login to application
Given I open my application
And I login with following credentials 
| admin | pass1234 |
 
 Java list for Cucumber/Gherkin Sample
 
 	List<String> list = data.asList(String.class);
	System.out.println("Username - " + list.get(0));
	System.out.println("Password - " + list.get(1));
 
 ------------------------------------------------------
 Data Map
 
 Scenario: Create new account in Facebook
Given I open Facebook URL
And fill up the new account form with the following data
| First Name | Last Name | Phone No   | Password | DOB Day  | DOB Month  | DOB Year  | Gender |
| Test FN 	 | Test LN 	 | 0123123123 | Pass1234 | 01 		| Jan 		 | 1990 	 | Male   |

 
@Given("^fill up the new account form with the following data$")
public void fill_up_the_new_account_form_with_the_following_data(DataTable dt) {
    List<Map<String, String>> list = dt.asMaps(String.class, String.class);
    System.out.println(list.get(0).get("First Name"));
    System.out.println(list.get(0).get("Last Name"));
    System.out.println(list.get(0).get("Phone No"));
    
With For

@Given("^I open Facebook URL and create new accounts with below data$")
public void i_open_Facebook_URL_and_create_new_accounts_with_below_data(DataTable dt) {
	List<List<String>> list = dt.asLists(String.class);
	for(int i=1; i<list.size(); i++) { //i starts from 1 because i=0 represents the header
		System.out.println(list.get(i).get(0)); 
		System.out.println(list.get(i).get(1));
	}
}
 
 http://www.automationtestinghub.com/cucumber-data-table/
 

