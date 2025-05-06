package za.co.bankzero.bankzero.runner.settings;

import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/Settings.feature"
        ,tags =
        "@Settings"
)
public class Settings extends SingleExecutionTestingRunner {
}
