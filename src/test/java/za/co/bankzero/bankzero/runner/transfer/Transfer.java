package za.co.bankzero.bankzero.runner.transfer;


import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/Transfer.feature"
        ,tags =
        "@Transfer"
)
public class Transfer extends SingleExecutionTestingRunner {
}
