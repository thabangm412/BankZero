package za.co.bankzero.bankzero.runner.statementandletters;


import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/StatementsAndLetters.feature"
        ,tags =
        "@Statement_letters"
)
public class StatementAndLetters extends SingleExecutionTestingRunner {
}
