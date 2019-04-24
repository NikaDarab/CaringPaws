package tests;

import org.junit.*;
import org.junit.runners.MethodSorters;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import java.util.Calendar;


import domain.login.UserManager;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class RegistrationTests {
	
	WebDriver driver;
	Calendar now = Calendar.getInstance();
	String randomUsername = "RandomUser" + now.get(Calendar.MINUTE) + now.get(Calendar.HOUR);
	
	@Before
	public void openHomepage() throws InterruptedException{
		UserManager.signOut();
		System.setProperty("webdriver.chrome.driver", "chromedriver");
		driver = new ChromeDriver();
		driver.get("http://localhost:8080/Testing/Home");
	}
	
	@Test
	public void testARegister() throws InterruptedException{
		this.slightDelay();
		
		// Go to the login page
		WebElement link = driver.findElement(By.id("navLogin"));
		link.click();
		
		this.slightDelay();
		
		// Get the username and password elements
  		WebElement usernameField = driver.findElement(By.id("usernameID"));
		usernameField.sendKeys(randomUsername);
		
		this.slightDelay();
		
		WebElement passwordField = driver.findElement(By.id("passwordID"));
		passwordField.sendKeys("password");
		
		this.slightDelay();
		
		// Click the login button
		WebElement submitButton = driver.findElement(By.id("registerButton"));
		submitButton.click();
		
		this.slightDelay();
		
		// Registration should be successful
		Assert.assertNotNull(driver.findElement(By.id("accountCreatedAlert")));
	}
	
	@Test
	public void testBLogin() throws InterruptedException{
		this.slightDelay();
		
		// Go to the login page
		WebElement link = driver.findElement(By.id("navLogin"));
		link.click();
		
		this.slightDelay();
		
		// Get the username and password elements
		WebElement usernameField = driver.findElement(By.id("usernameID"));
		usernameField.sendKeys(randomUsername);
		
		this.slightDelay();
		
		WebElement passwordField = driver.findElement(By.id("passwordID"));
		passwordField.sendKeys("password");
		
		this.slightDelay();
		
		// Click the login button
		WebElement submitButton = driver.findElement(By.id("loginButton"));
		submitButton.click();
		
		this.slightDelay();
		
		// Should be logged in and on the home page
		Assert.assertEquals("Caring Paws", driver.getTitle());
	}
	
	void slightDelay() throws InterruptedException {
		Thread.sleep(1000);
	}
	
	@After
	public void closePage(){
		driver.quit();
	}
}