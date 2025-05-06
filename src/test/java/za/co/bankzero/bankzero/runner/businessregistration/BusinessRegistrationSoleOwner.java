package za.co.bankzero.bankzero.runner.businessregistration;

import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/BusinessRegistrationSoleOwner.feature"
        ,tags =
        "@Business_Registration_Sole_Owner"
)
public class BusinessRegistrationSoleOwner extends SingleExecutionTestingRunner {
}
