package za.co.bankzero.bankzero.runner.send;


import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/SendMoney.feature"
        ,tags =
        "@Send"
)
public class Send extends SingleExecutionTestingRunner {
}
