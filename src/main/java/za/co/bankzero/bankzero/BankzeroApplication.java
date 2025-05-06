package za.co.bankzero.bankzero;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
@ComponentScan(value= {"za.co.bankzero.bankzero","za.co.commandquality.cmdq_automation_testing_core"},lazyInit = true)
public class BankzeroApplication {

	public static void main(String[] args) {
		SpringApplication.run(BankzeroApplication.class, args);
	}

}
