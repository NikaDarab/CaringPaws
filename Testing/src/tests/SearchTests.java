package tests;

import org.junit.*;
import org.junit.runners.MethodSorters;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import java.util.Calendar;


import domain.login.UserManager;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class SearchTests {
	
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
	public void testANameSearch() throws InterruptedException{
		this.slightDelay();
		
		// Go to the login page
		WebElement link = driver.findElement(By.id("navSearch"));
		link.click();
		
		this.slightDelay();
		
		// Enter into the search field
		WebElement searchField = driver.findElement(By.id("name"));
		searchField.sendKeys("Megan");
		
		this.slightDelay();
		
		// Hit submit
		WebElement submit = driver.findElement(By.id("submit"));
		submit.click();
		
		this.slightDelay();
		
		// Get the first result
		WebElement results = driver.findElement(By.className("sitterResult"));
		
		// Assert that the element that displays the result exists
		Assert.assertTrue(results.getSize().getHeight() > 0);
	}
	
	@Test
	public void testBZipCodeSearch() throws InterruptedException{
		this.slightDelay();
		
		// Go to the login page
		WebElement link = driver.findElement(By.id("navSearch"));
		link.click();
		
		this.slightDelay();
		
		// Enter into the search field
		WebElement searchField = driver.findElement(By.id("location"));
		searchField.sendKeys("78666");
		
		this.slightDelay();
		
		// Hit submit
		WebElement submit = driver.findElement(By.id("submit"));
		submit.click();
		
		this.slightDelay();
		
		// Get the first result
		WebElement results = driver.findElement(By.className("sitterResult"));
		
		// Assert that the element that displays the result exists
		Assert.assertTrue(results.getSize().getHeight() > 0);
	}
	
	@Test
	public void testCRatingSearch() throws InterruptedException{
		this.slightDelay();
		
		// Go to the login page
		WebElement link = driver.findElement(By.id("navSearch"));
		link.click();
		
		this.slightDelay();
		
		// Enter into the search field
		WebElement searchField = driver.findElement(By.id("rating"));
		searchField.sendKeys("2");
		
		this.slightDelay();
		
		// Hit submit
		WebElement submit = driver.findElement(By.id("submit"));
		submit.click();
		
		this.slightDelay();
		
		// Get the first result
		WebElement results = driver.findElement(By.className("sitterResult"));
		
		// Assert that the element that displays the result exists
		Assert.assertTrue(results.getSize().getHeight() > 0);
	}
	
	void slightDelay() throws InterruptedException {
		Thread.sleep(1000);
	}
	
	@After
	public void closePage(){
		driver.quit();
	}
}