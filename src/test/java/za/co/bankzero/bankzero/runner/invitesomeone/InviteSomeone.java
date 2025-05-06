package za.co.bankzero.bankzero.runner.invitesomeone;


import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/InviteSomeone.feature"
        ,tags =
        "@Invite"
)
public class InviteSomeone extends SingleExecutionTestingRunner {
}