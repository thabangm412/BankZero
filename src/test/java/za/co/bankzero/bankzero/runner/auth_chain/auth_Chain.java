package za.co.bankzero.bankzero.runner.auth_chain;


import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/AuthChain.feature"
        ,tags =
        "@Add_Level_A_Authorisers"
)
public class auth_Chain extends SingleExecutionTestingRunner {
}
