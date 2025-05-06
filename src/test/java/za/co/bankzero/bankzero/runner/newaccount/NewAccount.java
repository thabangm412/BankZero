package za.co.bankzero.bankzero.runner.newaccount;


import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/NewAccount.feature"
        ,tags =
        "@NewAccountAddCheckPickupAtRetail"
)
public class NewAccount extends SingleExecutionTestingRunner {
}