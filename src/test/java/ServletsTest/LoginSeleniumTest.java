
package ServletsTest;

import org.openqa.selenium.By;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.WebElement;

/**
 *
 * @author danie
 */
public class LoginSeleniumTest {
    
    private WebDriver driver;

    @BeforeEach
    public void setUp() {
        System.setProperty("webdriver.chrome.driver", "./src/test/java/chromedriver-wind64/chromedriver.exe");
        driver = new ChromeDriver();
        driver.manage().window().maximize();
    }

    @AfterEach
    public void tearDown() {
        if (driver != null) {
            driver.quit();
        }
    }
    
    @Test
    public void testSuccessfulLogin() {
        driver.get("http://localhost:8080/Proyecto_Chambita/Acceso/Login.jsp");

        driver.findElement(By.name("txtEmail")).sendKeys("usuario@ejemplo.com");
        driver.findElement(By.name("txtClave")).sendKeys("contraseña123");
        driver.findElement(By.tagName("button")).click();

        assertTrue(driver.getCurrentUrl().contains("/Cliente/MisSolicitudes.jsp"), "Error en el inicio de sesión.");
    }
    
    @Test
    public void testFailedLogin() {
        driver.get("http://localhost:8080/Proyecto_Chambita/Acceso/Login.jsp");

        driver.findElement(By.name("txtEmail")).sendKeys("usuario@invalido.com");
        driver.findElement(By.name("txtClave")).sendKeys("contraseñaIncorrecta");
        driver.findElement(By.tagName("button")).click();

        WebElement errorMsg = driver.findElement(By.id("mensajeError"));
        assertTrue(errorMsg.isDisplayed(), "El mensaje de error no se muestra.");
    }
    
}
