package za.co.bankzero.bankzero.runner.settings;

import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/Settings_Business.feature"
        ,tags =
        "@Maximum_of_two_Relationship_Banking_profile"
)
public class Settings_Business extends SingleExecutionTestingRunner {
}
