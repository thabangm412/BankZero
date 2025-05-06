package za.co.bankzero.bankzero.runner.withdraw;


import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/Withdrawal.feature"
        ,tags =
        "@Withdraw"
)
public class Withdraw extends SingleExecutionTestingRunner {
}
