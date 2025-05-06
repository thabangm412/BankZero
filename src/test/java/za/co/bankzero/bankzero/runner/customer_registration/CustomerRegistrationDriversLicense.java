package za.co.bankzero.bankzero.runner.customer_registration;
import io.cucumber.testng.CucumberOptions;

import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;


@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/CustomerRegistrationDriversLicense.feature"
        ,tags =
        "@Drivers_License_CourierToResidentialAddress_Approve_KYC"
)
public class CustomerRegistrationDriversLicense extends SingleExecutionTestingRunner {
}