package za.co.bankzero.bankzero.runner.pay;

import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.ParallelExecutionTestingRunner;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/Pay.feature"
        ,tags =
        "@PayExisting_Recipient_With_Email_CellNumber_And_Pay_Send_POP"
)
public class Pay extends SingleExecutionTestingRunner {
}
