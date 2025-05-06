package za.co.bankzero.bankzero;


import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.ComponentScan;



@SpringBootTest(classes = BankzeroApplication.class)
@ComponentScan(value= {"za.co.bankzero.bankzero","za.co.commandquality.cmdq_automation_testing_core"},lazyInit = true)
public class BankzeroApplicationTests {


	@Test
	public void createAppiumEmulator()
	{
//		webDriverService.se
	}
}