package za.co.bankzero.bankzero.runner.transactionhistory;

import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/TransactionHistory.feature"
        ,tags =
        "@Transaction_History_Transfer"
)
public class TransactionHistory extends SingleExecutionTestingRunner {
}