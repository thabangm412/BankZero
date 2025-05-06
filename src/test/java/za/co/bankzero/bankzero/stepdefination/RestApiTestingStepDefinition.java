package za.co.bankzero.bankzero.stepdefination;

import com.aventstack.extentreports.service.ExtentService;
import com.ibm.mq.MQException;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.After;
import io.cucumber.java.AfterStep;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import jakarta.annotation.PostConstruct;
import org.json.JSONException;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.xml.sax.SAXException;
import za.co.commandquality.cmdq_automation_testing_core.service.FileManager;
import za.co.bankzero.bankzero.helper.BaseTestingStepDefinitionHelper;
import za.co.bankzero.bankzero.helper.RestApiTestingStepDefinitionHelper;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

public class RestApiTestingStepDefinition extends BaseStepDefinition {

    @Autowired
    @Qualifier("restApiTestingStepDefinitionHelper")
    private BaseTestingStepDefinitionHelper helper;

    @PostConstruct
    public void init(){
        System.out.println("New RestApiTestingStepDefinition Test loading...... " + Thread.currentThread().getId());
    }

    @Before
    public void setReportFolderPath(){
        FileManager.REPORT_FOLDER_TARGET_PATH = Paths.get(ExtentService.getScreenshotFolderName()).getParent().toString() + File.separator + ((RestApiTestingStepDefinitionHelper) helper).getRestApiTestContext().getTestEnvironment() + File.separator;

        Path reportParentPath = Paths.get(ExtentService.getScreenshotFolderName()).getParent();
        String reportFolderZipFile = ((RestApiTestingStepDefinitionHelper) helper).getRestApiTestContext().getTestEnvironment() + "_" + reportParentPath.toFile().getName() + ".zip";

        FileManager.REPORT_FOLDER_ZIP_FILE_TARGET_PATH = Paths.get(reportParentPath.toString() + File.separator + reportFolderZipFile).toFile().getAbsolutePath();
    }

    @Before(value = "@HCL_Morning_Health_Checks_UAT")
    public void startUp() {
        ((RestApiTestingStepDefinitionHelper) helper).startUp();
    }

    @Given("I have {string} service request payload data from {string} at row number {string} for {string}")
    public void iHaveServiceRequestPayloadDataFromAtRowNumberFor(String serviceUnderTest, String testDataSheetCsvPath, String testDataSheetCsvRowIndex, String testCaseDescription) throws IOException {
        ((RestApiTestingStepDefinitionHelper) helper).iHaveServiceRequestPayloadDataFromAtRowNumberFor(serviceUnderTest, testDataSheetCsvPath, testDataSheetCsvRowIndex, testCaseDescription);

//        System.setProperty("csvPath",testDataSheetCsvPath);
//        System.setProperty("rowIndex",testDataSheetCsvRowIndex);

    }

    @And("I have called {string} REST API service using configuration and information from a data table")
    public void iHaveCalledRESTAPIServiceUsingConfigurationAndInformationFromADataTable(String serviceId, DataTable dataTable) throws IOException, ParseException, ParserConfigurationException, SAXException, TransformerException, MQException {
        ((RestApiTestingStepDefinitionHelper) helper).iHaveCalledRESTAPIServiceUsingConfigurationAndInformationFromADataTable(serviceId, dataTable);
    }


    @And("I query {string} database for {string} data with column names defined in {string} csv file, csv column name {string} and query statement from {string}, query statement column name {string}, query statement search criteria column name {string} value {string}")
    public void iQueryDatabaseForDataWithColumnNamesDefinedInCsvFileCsvColumnNameAndQueryStatementFromQueryStatementColumnNameQueryStatementSearchCriteriaColumnNameValue(String dbName, String resultset_id, String dbColumnNamesFilePath, String dbColumnNamesCsvColumn, String filePathWithQueryStatements, String queryStatementColumnName, String searchCriteriaColumnName, String searchCriteriaColumnValue  ) throws IOException {
        ((RestApiTestingStepDefinitionHelper) helper).iQueryDatabaseForDataWithColumnNamesDefinedInCsvFileCsvColumnNameAndQueryStatementFromQueryStatementColumnNameQueryStatementSearchCriteriaColumnNameValue(dbName, resultset_id, dbColumnNamesFilePath, dbColumnNamesCsvColumn, filePathWithQueryStatements, queryStatementColumnName, searchCriteriaColumnName, searchCriteriaColumnValue);
    }

    @Then("data from {string} {string} should be returned as per expected results from {string} csv data sheet, with fields to exclude {string}")
    public void dataFromShouldBeReturnedAsPerExpectedResultsFromCsvDataSheetWithFieldsToExclude(String serviceId, String actualValueSourceType, String controlTestSource, String fieldsToExcludePath) throws Exception {
        ((RestApiTestingStepDefinitionHelper) helper).dataFromShouldBeReturnedAsPerExpectedResultsFromCsvDataSheetWithFieldsToExclude(serviceId, actualValueSourceType, controlTestSource, fieldsToExcludePath);
    }

    @And("data from {string} {string} should be as per expected results from {string} {string}, based on field mappings csv file {string}, test source csv column name {string} and control source csv column name {string}, with fields to exclude {string}")
    public void dataFromShouldBeAsPerExpectedResultsFromBasedOnFieldMappingsCsvFileTestSourceCsvColumnNameAndControlSourceCsvColumnNameWithFieldsToExclude(String testSourceId, String actualValueSourceType, String controlSourceId, String expectedValueSourceType, String fieldMappingsCsvFilePath, String test_source_csv_column_name, String control_source_csv_column_name, String fieldsToExcludeCsvFilePath) {
        ((RestApiTestingStepDefinitionHelper) helper).dataFromShouldBeAsPerExpectedResultsFromBasedOnFieldMappingsCsvFileTestSourceCsvColumnNameAndControlSourceCsvColumnNameWithFieldsToExclude(testSourceId, actualValueSourceType, controlSourceId, expectedValueSourceType, fieldMappingsCsvFilePath, test_source_csv_column_name, control_source_csv_column_name, fieldsToExcludeCsvFilePath);
    }
    @And("{string} should not have assertion failures")
    public void shouldNotHaveAssertionFailures(String serviceId) throws JSONException {
        ((RestApiTestingStepDefinitionHelper) helper).assertTestFailure(serviceId);
    }

    @AfterStep("@HCL_Morning_Health_Checks_UAT")
    public void scenarioStepLogging(Scenario scenario) throws IOException {
        ((RestApiTestingStepDefinitionHelper) helper).scenarioStepLogging(scenario);
    }

    @After("@HCL_Morning_Health_Checks_UAT")
    public void tearDownScenario(Scenario scenario) throws IOException {
        ((RestApiTestingStepDefinitionHelper) helper).tearDownScenario(scenario);
    }


//    @And("I have called {string} REST API service with http {string} method, using configuration and information from a data table")
//    public void iHaveCalledRESTAPIServiceWithHttpMethodUsingConfigurationAndInformationFromADataTable(String serviceId, String httpMethodType, DataTable dataTable) throws IOException, ParseException, ParserConfigurationException, SAXException, TransformerException, MQException {
//        ((RestApiTestingStepDefinitionHelper) helper).iHaveCalledRESTAPIServiceUsingConfigurationAndInformationFromADataTable(serviceId, httpMethodType, dataTable);
//    }

//Get
    @Given("I call {string} service request {string} at row number {string} for {string}")
    public void iCallServiceRequestAtRowNumberFor(String serviceUnderTest, String testDataSheetCsvPath, String testDataSheetCsvRowIndex, String testCaseDescription) throws IOException {
        ((RestApiTestingStepDefinitionHelper) helper).iCallServiceRequestAtRowNumberFor(serviceUnderTest, testDataSheetCsvPath, testDataSheetCsvRowIndex, testCaseDescription);
    }

    @Then("Response from {string} {string} should be returned as per expected results from {string} csv data sheet, with fields to exclude {string}")
    public void responseFromShouldBeReturnedAsPerExpectedResultsFromCsvDataSheetWithFieldsToExclude(String serviceId, String actualValueSourceType, String controlTestSource, String fieldsToExcludePath) throws Exception {
        ((RestApiTestingStepDefinitionHelper) helper).responseFromShouldBeReturnedAsPerExpectedResultsFromCsvDataSheetWithFieldsToExclude(serviceId, actualValueSourceType, controlTestSource, fieldsToExcludePath);
    }

    @Then("{string} payment id should be retrieved")
    public void paymentIdShouldBeRetrieved(String serviceId) throws JSONException {
        ((RestApiTestingStepDefinitionHelper) helper).retrievePaymentId();
        ((RestApiTestingStepDefinitionHelper) helper).writePaymentIdToSystem(serviceId);
    }


    @And("I validate BGA number received from {string}")
    public void iValidateBGANumber(String serviceId) throws JSONException {
        ((RestApiTestingStepDefinitionHelper) helper).validateBGANumber(serviceId);
    }
}
