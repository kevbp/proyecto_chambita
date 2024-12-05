
package ServletsTest;

import org.openqa.selenium.By;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import static org.junit.jupiter.api.Assertions.*;

import org.openqa.selenium.chrome.ChromeDriver;

/**
 *
 * @author danie
 */
public class SolicitudSeleniumTest {
    
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
    public void testRegisterSolicitud() {
        driver.get("http://localhost:8080/Proyecto_Chambita/Cliente/Registrar.jsp");

        driver.findElement(By.className("txtTitulo").name("txtTitulo")).sendKeys("Nueva Solicitud");
        driver.findElement(By.name("txtDescripcion")).sendKeys("Descripción de prueba");
        driver.findElement(By.name("txtFecha")).sendKeys("2024-12-10");
        driver.findElement(By.name("txtRegion")).sendKeys("Lima");
        driver.findElement(By.name("txtProvincia")).sendKeys("Lima");
        driver.findElement(By.name("txtDistrito")).sendKeys("Miraflores");
        driver.findElement(By.name("txtPrecio")).sendKeys("150.50");

        WebElement registerButton = driver.findElement(By.tagName("button"));
        registerButton.click();

        assertTrue(driver.getCurrentUrl().contains("Cliente/MisSolicitudes.jsp"), "Registro fallido o no redirigido correctamente.");
    }
    
}
