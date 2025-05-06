package za.co.bankzero.bankzero.runner;

import io.cucumber.testng.CucumberOptions;

@CucumberOptions(features = {"classpath:sbg_cib/restapi_testing_feature/features"})
public class BaseRestAPITestingRunner extends SingleExecutionTestingRunner {
}