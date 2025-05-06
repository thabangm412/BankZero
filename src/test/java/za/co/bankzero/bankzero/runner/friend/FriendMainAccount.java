package za.co.bankzero.bankzero.runner.friend;


import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/FriendsForMainAccount.feature"
        ,tags =
        "@Friend"
)
public class FriendMainAccount extends SingleExecutionTestingRunner {
}