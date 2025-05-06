package za.co.bankzero.bankzero.runner.statementandletters;

import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;


@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/StatementsAndLettersForNoticeAccountAndSavings.feature"
        ,tags =
        "@Statement&letters"
)
public class StatementAndLettersSavingsAndNotice extends SingleExecutionTestingRunner {
}
