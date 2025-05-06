package za.co.bankzero.bankzero.runner.transfere_savings_account;


import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/TransfareToSavingsAccount.feature"
        ,tags =
        "@Transfare"
)
public class TransferForSavingsAccount extends SingleExecutionTestingRunner {
}
