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


##########################
NewUserCreate.Java


package Masters;

import com.sun.org.apache.bcel.internal.generic.RETURN;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import net.bytebuddy.asm.Advice;
import org.openqa.selenium.By;
import org.openqa.selenium.ElementClickInterceptedException;
import org.openqa.selenium.WebDriver;

import javax.lang.model.element.Element;
import java.security.PrivateKey;
import java.util.List;
import java.util.Map;

import static Masters.testEngine.*;


public class NewUserCreate {
   public static WebDriver driver;

    private static String name_surname;
    private static String tc_Id;
    private static String phone_number_1;
    private static String phone_number_2;
    private static String e_mail_1;
    private static String e_mail_2;
    private static String addresses;
    private static String vehicle_number;
    private static String job;
    private static String gender;
    private static String balance_entry;

    private static By Users = By.id("kisiler");
    private static By NewButton = By.cssSelector("[datasourcetype='Profile'] .mat-raised-button");
    private static By ApsiyonLoadingVideo = By.id("myVideo");
    private static By NameAndSurname = By.cssSelector("[placeholder='Adı Soyadı']");
    private static By TCNo = By.cssSelector("[placeholder='TC kimlik no']");
    private static By PhoneNumber1 = By.cssSelector("[placeholder='Telefon numarası (Varsayılan)']");
    private static By PhoneNumber2 = By.cssSelector("[placeholder='Telefon numarası (İkincil)']");
    private static By Email1 = By.cssSelector("[placeholder='E-Posta (Varsayılan)']");
    private static By Email2 = By.cssSelector("[placeholder='E-Posta (İkincil)']");
    private static By Addresses = By.cssSelector("[placeholder='Adres']");
    private static By VehiclePlateNumber = By.cssSelector("[placeholder='Araç Plakası']");
    private static By Job = By.cssSelector("[placeholder='Meslek']");
    private static By EducationStatus = By.cssSelector("[aria-label='Öğrenim Durumu']");
    private static By LicenseOption = By.cssSelector("mat-option.mat-option:nth-child(4)");
    private static By GirlCheckBox = By.cssSelector("#mat-radio-2  > label > div:nth-child(1)");
    private static By MenCheckBox = By.cssSelector("#mat-radio-3  > label > div:nth-child(1)");
    private static By OpeningBalanceEntry = By.className("mat-checkbox-layout");
    private static By Save = By.xpath("//span[contains(text(), 'Kaydet')]");

    @Given("^User Create$")

    public static void user_Create(DataTable dtable) throws Throwable {

        List<Map<String, String>> list = dtable.asMaps(String.class, String.class);

        WaitElementNotVisible(ApsiyonLoadingVideo);

        name_surname = list.get(0).get("Name and Surname");
        tc_Id = list.get(0).get("TC No");
        phone_number_1 = list.get(0).get("Phone No 1");
        phone_number_2 = list.get(0).get("Phone No 2");
        e_mail_1 = list.get(0).get("E Mail 1");
        e_mail_2 = list.get(0).get("E Mail 2");
        addresses = list.get(0).get("Addresses");
        vehicle_number = list.get(0).get("Vehicle Plate Number");
        job = list.get(0).get("Job");
        gender = list.get(0).get("Gender");
        balance_entry = list.get(0).get("Opening Balance Entry");

        SendKeys(NameAndSurname, name_surname);
        Click(NewButton);
        System.out.println(name_surname);
        System.out.println(tc_Id);

        Go_To_URL("http://www.google.com");



    }


}

###############################################
testEngine.Java

package Masters;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;


public class testEngine {

    public static WebDriver driver;
    public static int waitTime = 3000;
    public static int wait3sec = 3000;
    public static int wait1sec = 1000;


    public static void Go_To_URL(String url){

        driver.get(url);
    }


    public static void Click(By Element){

        driver.findElement(Element).click();
    }

    public static void SendKeys(By Element, CharSequence Text) {

        driver.findElement(Element).sendKeys(Text);
    }

    public static void Clear(By Element){

        driver.findElement(Element).clear();
    }

    public static void GetText(By Element, CharSequence Text){

        driver.findElement(Element).getText();
    }

    public static void WaitElementVisible(By Element) {

        WebDriverWait wait = new WebDriverWait(driver,waitTime);
        wait.until(ExpectedConditions.visibilityOf(driver.findElement(Element)));
    }

    public static void WaitElementNotVisible(By Element) {

        WebDriverWait wait = new WebDriverWait(driver,waitTime);
        wait.until(ExpectedConditions.invisibilityOf(driver.findElement(Element)));
    }

    public static void WaitElementToBeClickable(By Element){

        WebDriverWait wait = new WebDriverWait(driver,waitTime);
        wait.until(ExpectedConditions.elementToBeClickable(driver.findElement(Element)));
    }

    public static void SleepTimeTree()throws Exception{

            Thread.sleep(wait3sec);
    }

    public static void SleepTimeOne()throws Exception{

        Thread.sleep(wait1sec);
    }

}
###########################################################

TestRunner.Java									      
									      
package Runner;


import cucumber.api.CucumberOptions;
import cucumber.api.testng.AbstractTestNGCucumberTests;


//@RunWith(Cucumber.class)
@CucumberOptions(
        features = "C:/Users/koray.saldere/IdeaProjects/Tpro/src/test/resources/tesa.feature",
        glue = {"Masters"},
        monochrome = true)
class TestRunner extends AbstractTestNGCucumberTests {

}
									      
########################################################
									      

									     
Feature File
									      
Feature: User Login, Create Fill Form and check user

  Scenario: Login try with invalid and valid credentials

    Given I am on User login to Apsiyon Homepage
    When  I fill in invalid Username and Password
      | Username         | Password     |
      | test@test.com    | 123456       |
      | TEST@TEST.COM    | 987654321    |
      | test@gmail.com   | 123456Adasd  |
      | TEST@HOTMAIL.COM | 9sdq87654321 |
    And   I press "Login" button
    Then  I should see Usurename and Password invalid
    When  I fill in valid Username and Password
      | Username         | Password     |
      | test@test.com    | 123456       |
    And   I press "Login" button
    Then  I should see "Login Successful"

  Scenario: login with valid credentials

    Given  I am on User login to Apsiyon Homepage
    When   I fill in "Email" with "test@test.com"
    And    I fill in "Password" with "test123pass"
    And    I press "Login" button
    Then   I should be on the users home page

  Scenario: User Create Fill out form

    Given  I click the Kişiler tab.
    And    Yeni button is clicked on the loaded page.
    And    I fill out form without Name Surname and TC No
      | Name and Surname | TC No       | Phone No 1 | Phone No 2 | E Mail 1               | E Mail 2               | Addresses                                         | Vehicle Plate Number | Job                    | Gender | Opening Balance Entry |
      | Koray Saldere    | 93614812389 | 5428546846 | 5428546845 | koraysaldere@gmail.com | koraysaldere@gmail.com | Tatlikuyu Mahallesi 1302 Sokak No 4 Gebze/Kocaeli | 34UASD123            | Software Test Engineer | Men    | false                 |
    When   I Clicked "Submit" button
    Then   Name and surname is not empty
    When   I filled out all form area
    And    I Click "Save" button
    Then   Register Succesfuly

  Scenario: Search and Filter registered user

    Given I am on the Kişiler page, click the filtering icon near to Adı Soyadı.
    When  I click the Ara text field in the filter field.
    And   I filled out registered  Ad Soyad in the Ara field and press Enter.
    And   Appears to the Ad Soyad in the search criteria is listed.
    And   The listed item is clicked.
    Then  The registered Ad Soyad matches the contact information and all records must be seen correctly processed into the system.





									      
									      


