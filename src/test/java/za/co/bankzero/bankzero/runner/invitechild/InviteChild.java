package za.co.bankzero.bankzero.runner.invitechild;


import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/InviteAChild.feature"
        ,tags =
        "@InviteAChild"
)
public class InviteChild extends SingleExecutionTestingRunner {
}