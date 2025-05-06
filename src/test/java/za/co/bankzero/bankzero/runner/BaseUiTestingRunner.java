package za.co.bankzero.bankzero.runner;

import io.cucumber.testng.CucumberOptions;

@CucumberOptions(features = {"classpath:sbg_cib/ui_testing_feature/features"})
public class BaseUiTestingRunner extends ParallelExecutionTestingRunner {

}
