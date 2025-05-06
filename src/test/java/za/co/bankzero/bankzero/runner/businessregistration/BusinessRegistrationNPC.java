package za.co.bankzero.bankzero.runner.businessregistration;

import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/BusinessRegistrationNPC.feature"
        ,tags =
        "@Business_Registration_NPC"
)
public class BusinessRegistrationNPC extends SingleExecutionTestingRunner {
}
