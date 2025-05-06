package za.co.bankzero.bankzero.runner.friend;


import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/Friends_Business.feature"
        ,tags =
        "@AddFriend"
)
public class Friend_Business extends SingleExecutionTestingRunner {
}