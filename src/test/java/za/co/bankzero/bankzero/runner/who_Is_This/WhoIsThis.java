package za.co.bankzero.bankzero.runner.who_Is_This;


import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/WhoIsThis.feature"
        ,tags =
        "@WhoIsThis"
)
public class WhoIsThis extends SingleExecutionTestingRunner {
}
