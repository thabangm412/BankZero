package za.co.bankzero.bankzero.runner.buy;


import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.ParallelExecutionTestingRunner;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/Buy.feature"
        ,tags =
        "@Buy"
)
public class Buy extends SingleExecutionTestingRunner {
}
