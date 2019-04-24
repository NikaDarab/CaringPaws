package tests;

import org.junit.*;
import org.junit.runners.MethodSorters;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import java.util.Calendar;


import domain.login.UserManager;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class ReserveSitterTest {
	
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
		
		// Go to the search page
		WebElement link = driver.findElement(By.id("navSearch"));
		link.click();
		
		this.slightDelay();
		
		// Hit submit
		WebElement submit = driver.findElement(By.id("submit"));
		submit.click();
		
		this.slightDelay();
		
		// Click first sitter
		WebElement sitter = driver.findElement(By.id("sitterlink"));
		sitter.click();
		
		this.slightDelay();
		
		// Hit "reserve sitter"
		WebElement submitAgain = driver.findElement(By.id("submit"));
		submitAgain.click();
		
		
		this.slightDelay();
		
		// Set date
		WebElement date = driver.findElement(By.id("date"));
		date.sendKeys("12/12/2019");
		
		
		this.slightDelay();
		
		// Hit submit
		WebElement submitAgain2 = driver.findElement(By.id("submit"));
		submitAgain2.click();
		
		this.slightDelay();
		
		// Assert that the pet was added successfully
		WebElement added = driver.findElement(By.id("reserveMessage"));
		Assert.assertNotNull(added.getSize().getHeight());
		
		this.slightDelay();
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