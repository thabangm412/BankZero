package za.co.bankzero.bankzero.runner.pay;

import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/PayMany.feature"
        ,tags =
        "@Pay_Many_With_New_Payment"
)
public class PayMany extends SingleExecutionTestingRunner {
}
