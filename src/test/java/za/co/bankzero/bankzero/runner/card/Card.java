package za.co.bankzero.bankzero.runner.card;

import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/Card.feature"
        ,tags =
        "@ViewPin"
)
public class Card extends SingleExecutionTestingRunner {
}