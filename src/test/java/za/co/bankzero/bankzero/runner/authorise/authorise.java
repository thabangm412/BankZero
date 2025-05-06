package za.co.bankzero.bankzero.runner.authorise;


import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/Authorise.feature"
        ,tags =
        "@Authorise"
)
public class authorise extends SingleExecutionTestingRunner {
}
