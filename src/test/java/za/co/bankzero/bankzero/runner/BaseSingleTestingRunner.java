package za.co.bankzero.bankzero.runner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
import org.testng.annotations.AfterClass;
import org.testng.annotations.DataProvider;

@CucumberOptions(glue = "za.co.bankzero.bankzero.stepdefination",
monochrome = true,
plugin = {
        "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:",
        "rerun:target/failed_scenarANDROID.txt"
})
public class BaseSingleTestingRunner extends AbstractTestNGCucumberTests {
    @Override
    @DataProvider(parallel = false)
    public Object[][] scenarios()
    {
        return super.scenarios();    }
    @AfterClass
    public void setAdditionalReportInfo(){

    }
}
