package za.co.bankzero.bankzero.runner.customer_registration;

import io.cucumber.testng.CucumberOptions;

import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;


@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/CustomerRegistrationGreenIDBook.feature"
        ,tags =
        "@GreenID_Book_CourierTosameAddress"
)
public class CustomerRegistrationGreenIDBook extends SingleExecutionTestingRunner {
}