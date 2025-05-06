package za.co.bankzero.bankzero.runner.who_am_i;


import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/WhoAmI.feature"
        ,tags =
        "@WhoAmI"
)
public class WhoAmI extends SingleExecutionTestingRunner {
}
