package za.co.bankzero.bankzero.runner.businessregistration;

import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/BusinessRegistrationBasicPartnership.feature"
        ,tags =
        "@Business_Registration_Basic_Partnership"
)
public class BusinessRegistrationBasicPartnership extends SingleExecutionTestingRunner {
}
