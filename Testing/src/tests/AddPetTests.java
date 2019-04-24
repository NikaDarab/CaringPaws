package tests;

import org.junit.*;
import org.junit.runners.MethodSorters;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import java.util.Calendar;


import domain.login.UserManager;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class AddPetTests {
	
	WebDriver driver;
	
	@Before
	public void login() throws InterruptedException{
		UserManager.signOut();
		System.setProperty("webdriver.chrome.driver", "chromedriver");
		driver = new ChromeDriver();
		driver.get("http://localhost:8080/Testing/LoginController");
		
		this.slightDelay();
		
		if(driver.getTitle() != "Caring Paws") {
			// Get the username and password elements
	  		WebElement usernameField = driver.findElement(By.id("usernameID"));
			usernameField.sendKeys("Liam");
			
			this.slightDelay();
			
			WebElement passwordField = driver.findElement(By.id("passwordID"));
			passwordField.sendKeys("password");
			
			this.slightDelay();
			
			// Click the login button
			WebElement submitButton = driver.findElement(By.id("loginButton"));
			submitButton.click();
		}
		
		this.slightDelay();
	}
	
	@Test
	public void testCRatingSearch() throws InterruptedException{
		this.slightDelay();
		
		// Go to the login page
		WebElement link = driver.findElement(By.id("navAddPet"));
		link.click();
		
		this.slightDelay();
		
		// Set name
		WebElement name = driver.findElement(By.id("name"));
		name.sendKeys(getRandomString());
		
		this.slightDelay();
		
		// Set type
		WebElement type = driver.findElement(By.id("type"));
		type.sendKeys(getRandomString());
		
		this.slightDelay();
		
		// Set breed
		WebElement breed = driver.findElement(By.id("breed"));
		breed.sendKeys(getRandomString());
		
		this.slightDelay();
		
		// Set Date of birth
		WebElement dob = driver.findElement(By.id("dob"));
		dob.sendKeys(getRandomString());
		
		this.slightDelay();
		
		// Set weight 
		WebElement weight = driver.findElement(By.id("weight"));
		weight.sendKeys(((int)(Math.random() * 100)) + "");
		
		this.slightDelay();

		// set color
		WebElement color = driver.findElement(By.id("color"));
		color.sendKeys(getRandomString());
		
		this.slightDelay();
		
		// Set spayed
		WebElement spayed = driver.findElement(By.id("spay"));
		spayed.click();
		
		this.slightDelay();
		
		// set nature
		WebElement nature = driver.findElement(By.id("nature"));
		nature.sendKeys(getRandomString());
		
		this.slightDelay();
		
		// hit submit
		WebElement submit = driver.findElement(By.id("submit"));
		submit.click();
		
		this.slightDelay();
		
		// Assert that the pet was added successfully
		WebElement added = driver.findElement(By.id("added"));
		Assert.assertNotNull(added.getSize().getHeight());
	}
	
	String getRandomString() {
		String[] characters = "a b c d e f g h i j k l m n o p q r s t u v w x y z".split(" ");
		String string = "";
		for(int i = 0; i < 10; i++) {
			string += characters[(int)(Math.random() * characters.length)];
		}
		return string;
	}
	
	void slightDelay() throws InterruptedException {
		Thread.sleep(1000);
	}
	
	@After
	public void closePage(){
		driver.quit();
	}
}