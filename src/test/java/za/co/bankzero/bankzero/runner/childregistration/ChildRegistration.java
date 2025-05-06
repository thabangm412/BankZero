package za.co.bankzero.bankzero.runner.childregistration;


import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/ChildRegistration.feature"
        ,tags =
        "@ChildRegistration_CourierToResidentialAddress"
)
public class ChildRegistration extends SingleExecutionTestingRunner {
}