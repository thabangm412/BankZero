package za.co.bankzero.bankzero.helper;

import com.beust.ah.A;
import com.github.javafaker.Faker;
import com.opencsv.CSVWriter;
import io.appium.java_client.android.AndroidDriver;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.Scenario;
import jakarta.annotation.PostConstruct;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.csv.CSVRecord;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.testng.Assert;
import org.testng.asserts.SoftAssert;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import za.co.bankzero.bankzero.utils.ClearUserData;
import za.co.bankzero.bankzero.utils.OTP;
import za.co.commandquality.cmdq_automation_testing_core.annotation.TestScope;
import za.co.commandquality.cmdq_automation_testing_core.model.context.TestContext;
import za.co.commandquality.cmdq_automation_testing_core.model.context.WebDriverTestContext;
import za.co.commandquality.cmdq_automation_testing_core.model.database.SearchColumn;
import za.co.commandquality.cmdq_automation_testing_core.service.Diff;
import za.co.commandquality.cmdq_automation_testing_core.util.CSVReader;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.awt.*;
import java.awt.event.KeyEvent;
import java.io.*;
import java.net.MalformedURLException;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.*;

import static java.awt.event.KeyEvent.VK_ENTER;
import static java.lang.Integer.parseInt;
import static za.co.bankzero.bankzero.utils.GenerateNumbers.generateCellPhoneNumber;
import static za.co.bankzero.bankzero.utils.SouthAfricanIDGenerator.generateRandomSouthAfricanId;

@TestScope
@Qualifier("uiTestingStepDefinitionHelper")
@Data
@Slf4j
public class UiTestingStepDefinitionHelper extends BaseTestingStepDefinitionHelper {

    @Autowired
    RestApiTestingStepDefinitionHelper restApiTestingStepDefinitionHelper;
    @Autowired
    @Qualifier("webDriverTestContext")
    private TestContext testContext;
    private static String responseStatus;
    private static String referenceNumber;
    private static String TransactionReference;
    private static FileWriter csvFileWriter;
    private static CSVWriter csvWriter;

    int tempCounter = 0;
    SoftAssert softAssert = new SoftAssert();


    @Value("${browser}")
    private String browser;

    @PostConstruct
    public void init() {

        testContextThreadLocal = new ThreadLocal<>();
    }

    public void setUp() throws MalformedURLException {
        this.testContextThreadLocal.set(testContext);
        System.out.println("New UiTestingStepDefinitionHelper Test loading...... " + Thread.currentThread().getId() + " : " + this.hashCode() + " : " + this.testContextThreadLocal.get().toString() + " : " + this.testContextThreadLocal.get().hashCode());
        this.testContextThreadLocal.get().setDatabaseResultsSetMap(new HashMap<>());

        this.testContextThreadLocal.get().setDatabaseQueryStatements(new StringWriter());
        this.testContextThreadLocal.get().setAssertionFailures(new StringWriter());

        this.testContextThreadLocal.get().setTestResults(new Diff());
        this.testContextThreadLocal.get().setTestResultsList(new ArrayList<>());

        this.testContextThreadLocal.get().setScenarioStepTextForLogging(new StringBuilder());
    }

    public void startUpDriver(String deviceType, String applicationType) throws MalformedURLException {
        this.webDriverService.setupWebDriver(Thread.currentThread(), deviceType, applicationType);
    }
    public AndroidDriver bringDriver(){
        Thread.currentThread();
        return null;
    }

    public void aBrowserIsOpenedWithWebsiteUrl(String websiteName, DataTable dataTable) throws IOException {
        CSVRecord serviceConfigurationUriData = CSVReader.getCSVRecord(Paths.get(System.getProperty("user.dir") + "/src/test/resources/" + testContext.getProductUnderTest() + File.separator + "web_services_configuration" + File.separator + testContext.getTestEnvironment() + File.separator + "ui-service-config.csv"), new SearchColumn("Website_To_Open", websiteName));
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        webDriverService.goTo(Thread.currentThread(), serviceConfigurationUriData.get("baseUrl"));
    }

    public void iEnterAValueOnTextBox(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        String textBoxValue = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(elementId);
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
       this.webDriverService.writeText(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"),textBoxValue);
//        this.webDriverService.writeText(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"),textBoxValue);


    }

    public void waitForInActiveElement(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.waitForInActiveElement(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
    }
    public void iClickWebPageElementsOnWeb(String elementId,DataTable dataTable) throws IOException, InterruptedException {
        Thread.sleep(2000);
        testContext.setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(testContext.getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        WebElement webElement = this.webDriverService.getWebElementWithByClass(Thread.currentThread(), webElementsRecord.get("WebDriver_Element_Selector_Value"), webElementsRecord.get("WebDriver_Element_Selector_Type"));
        Thread.sleep(3000);
        this.webDriverService.click(webElement);
    }

    public void pressEnterOnCheckbox(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        testContext.setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(testContext.getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        WebElement webElement = this.webDriverService.getWebElementWithByClass(Thread.currentThread(), webElementsRecord.get("WebDriver_Element_Selector_Value"), webElementsRecord.get("WebDriver_Element_Selector_Type"));
        this.webDriverService.pressEnterOnCheckbox(Thread.currentThread(), webElement);

    }
    public void clearAndWriteText(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        String textBoxValue = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(elementId);
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService. clearAndWriteText(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"),textBoxValue);
    }
    public void iTapWebPageElement(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.tap(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
    }

    public void ClickAndHold(String elementId,DataTable dataTable) throws IOException, InterruptedException {
        testContext.setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        WebElement webElement = this.webDriverService.getWebElementWithByClass(Thread.currentThread(), webElementsRecord.get("WebDriver_Element_Selector_Value"), webElementsRecord.get("WebDriver_Element_Selector_Type"));
      this.webDriverService.ClickAndHold(Thread.currentThread(),webElement);
    }

    public void iScrollToView(String elementId) throws IOException {
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        WebElement webElement = this.webDriverService.getWebElementWithByClass(Thread.currentThread(), webElementsRecord.get("WebDriver_Element_Selector_Value"), webElementsRecord.get("WebDriver_Element_Selector_Type"));
        this.webDriverService.scrollIntoView(Thread.currentThread(), webElement);
    }



    public void forceClickWebPageElement(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        testContext.setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(testContext.getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        WebElement webElement = this.webDriverService.getWebElementWithByClass(Thread.currentThread(), webElementsRecord.get("WebDriver_Element_Selector_Value"), webElementsRecord.get("WebDriver_Element_Selector_Type"));
        this.webDriverService.clickWithJavascriptExecutor(Thread.currentThread(), webElement);


    }
    public void iClearAndEnterAValueOnTextBox(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        String textBoxValue = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(elementId);
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.clearAndWriteText(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"),textBoxValue);

    }
    public void iClearAndEnterARandomValueOnTextBox(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        Faker faker = new Faker();
        String textBoxValue = faker.name().firstName().replaceAll("[^a-zA-Z]", "");
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.clearAndWriteText(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"),textBoxValue);

    }


    public void iGenerateSAIDNumberAndEnterAValueOnTextBox(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        String textBoxValue = generateRandomSouthAfricanId();
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.writeText(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"),textBoxValue);

    }

    public void iGenerateSACellNumberAndEnterAValueOnTextBox(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        String textBoxValue = generateCellPhoneNumber();
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.writeText(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"),textBoxValue);

    }


    public void iPayMany(String csv,String recipientId,String paymentOption, DataTable dataTable) throws IOException, InterruptedException {

        String line = "";
        String csvSplitBy = ",";
        Set<Integer> idsToRead = new HashSet<>();

        // Parse the idsToReadString into a Set of Integers
        for (String id : recipientId.split(",")) {
            idsToRead.add(Integer.parseInt(id.trim()));
        }

        try (BufferedReader br = new BufferedReader(new FileReader(csv))) {
            boolean isFirstLine = true;
            while ((line = br.readLine()) != null) {
                // Skip the header line
                if (isFirstLine) {
                    isFirstLine = false;
                    continue;
                }

                String[] data = line.split(csvSplitBy);
                int id = Integer.parseInt(data[0]);

                if (idsToRead.contains(id)) {

                    this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
                    int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
                    CSVRecord payManySearchWebElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", "PayManySearch"));
                    this.webDriverService.writeText(Thread.currentThread(), payManySearchWebElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"),data[1]);

                    iClickWebPageElement(paymentOption,dataTable);
                    if(paymentOption.equalsIgnoreCase("newPayment")) {
                        CSVRecord amountWebElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", "Amount"));
                        this.webDriverService.writeText(Thread.currentThread(), amountWebElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"), data[2]);
                    }
                    iClickWebPageElement("Cancel",dataTable);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (NumberFormatException e) {
            System.err.println("Error parsing ID: " + e.getMessage());
        }



    }

    public void iEnterAValueOnTextBoxonFlightDeck(String elementId) throws IOException, InterruptedException {
        String textBoxValue = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(elementId);
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        this.webDriverService.writeText(Thread.currentThread(), webElementsRecord.toMap(), "WEB_BROWSER", textBoxValue);

    }
    public void shouldBeDisplayedOnMjjYudWithByElementType(String expectedValue, String selectionValueOrPattern, String byClassType) {
        List<WebElement> webElements = this.webDriverService.getWebElementsWithByClass(Thread.currentThread(), selectionValueOrPattern, byClassType); ////*[@id="rso"]/div[2] //*[@id="rso"]/div[3]
        Assert.assertNotNull(webElements.parallelStream().filter(webElement -> webElement.getText().contains(expectedValue)).findFirst().get());

    }


    public void iScrollDown(String elementAttr) throws InterruptedException {
        this.webDriverService.scrollPage(Thread.currentThread(), elementAttr);
    }

    public void clickButtonByText(String textValue,  DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.clickButtonByText(Thread.currentThread(), textValue, testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));


    }


    public String returnDataFromCsvFile(String value , DataTable dataTable){
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        return   this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(value);
    }

    public String ReadBalance(String elementId, DataTable dataTable) throws IOException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        String elementText = this.webDriverService.readText(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
        return elementText.replace("R","").replace(" ","").trim();
    }
    public void iClickOnSelectingWithByElementTypeAndWait(String selectionValueOrPattern, String byClassType) throws InterruptedException {
        this.webDriverService.clickWithJavascriptExecutor(Thread.currentThread(), this.webDriverService.getWebElementWithByClass(Thread.currentThread(), selectionValueOrPattern, byClassType));
    }
    public void iClickOnSelectingWithByElementTypeVolpay(String selectionValueOrPattern, String byClassType) throws InterruptedException {
        this.webDriverService.clickWithJavascriptExecutor(Thread.currentThread(), this.webDriverService.getWebElementWithByClass(Thread.currentThread(), selectionValueOrPattern, byClassType));
    }

    public void iSelectPopUpMessageAndRetrieveValue(String elementId, String value) throws ParserConfigurationException, IOException, SAXException {

        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        WebElement webElementWithByClass = this.webDriverService.getWebElementWithByClass(Thread.currentThread(), webElementsRecord.get("WebDriver_Element_Selector_Value"), webElementsRecord.get("WebDriver_Element_Selector_Type"));
        String text = webElementWithByClass.getText();

        DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
        InputSource src = new InputSource();
        src.setCharacterStream(new StringReader(text));
        Document doc = builder.parse(src);

        responseStatus = doc.getElementsByTagName(value).item(0).getTextContent();

    }

    public void iSelectPopUpMessageAndRetrieveValues(String elementId, String value) throws ParserConfigurationException, IOException, SAXException {

        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        WebElement webElementWithByClass = this.webDriverService.getWebElementWithByClass(Thread.currentThread(), webElementsRecord.get("WebDriver_Element_Selector_Value"), webElementsRecord.get("WebDriver_Element_Selector_Type"));
        String text = webElementWithByClass.getText();

        DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
        InputSource src = new InputSource();
        src.setCharacterStream(new StringReader(text));
        Document doc = builder.parse(src);

        responseStatus = doc.getElementsByTagName(value).item(1).getTextContent();

    }

    public void iSelectPopUpMessageAndRetrieveTagAndValue(String elementId, String value, String index) throws IOException, ParserConfigurationException, SAXException {
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        WebElement webElementWithByClass = this.webDriverService.getWebElementWithByClass(Thread.currentThread(), webElementsRecord.get("WebDriver_Element_Selector_Value"), webElementsRecord.get("WebDriver_Element_Selector_Type"));
        String text = webElementWithByClass.getText();

        DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
        InputSource src = new InputSource();
        src.setCharacterStream(new StringReader(text));
        Document doc = builder.parse(src);
        responseStatus = doc.getElementsByTagName(value).item(parseInt(index)).getTextContent();
    }
    private String replacePlaceholders(String text, Map<String, String> data) {
        for (Map.Entry<String, String> entry : data.entrySet()) {
            text = text.replace("<" + entry.getKey() + ">", entry.getValue());
        }
//        String currentBalance = this.testContextThreadLocal.get().getCurrentBalance();

//        text = text.replace("currentBalance",  currentBalance);

        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd MMM-yy EEE HH'h'mm");
        String formattedDate = now.format(formatter);
        text = text.replace("CurrentDateTime", formattedDate);
        return text;
    }
//    public void shouldBeDisplayedOnWebPageElement(String textValue, String elementId, DataTable dataTable) throws IOException, InterruptedException {
//        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
//        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
//        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
//        String actualValue = this.webDriverService.readText(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
//        Assert.assertTrue(actualValue.contains(textValue), String.format("Expexted Value is [%s], by got the value of [%s]", textValue, actualValue));
//
//
//    }
    public void shouldBeDisplayedOnWebPageElement(String textValueKey,String elementId, DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        String textValue = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(textValueKey);
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        String actualValue = this.webDriverService.readText(Thread.currentThread(), webElementsRecord.toMap(),testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
        Assert.assertEquals(textValue,actualValue);
    }

    public void enterOtpInTextBox(String number,String elementId, DataTable dataTable)throws IOException, InterruptedException{
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        Thread.sleep(2000);
        this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(number);
        String otp = OTP.getOtp(number);
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.writeText(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"),otp);

    }

    public void clearUserData(String textValueKey, DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        String textValue = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(textValueKey);
       ClearUserData.clearUserData(textValue);

       //Assertions.assertEquals(ClearUserData.clearUserData(textValue),"Success");

    }

    public void iEnterAutogeneratedValueOnTextBox(String elementId, String value,DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.writeText(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"),value);

    }
    public void iClickWithXCUIElementTypeStaticText( DataTable dataTable,String elementId) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        String textBoxValue = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(elementId);
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.clickWithXCUIElementTypeStaticText(Thread.currentThread(),textBoxValue ,testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
    }

    public void  iCopyFile( DataTable dataTable,String elementId) throws Exception {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        String textBoxValue = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(elementId);
         File file = new File(textBoxValue);
         this.webDriverService.copyFileIfNotExist(Thread.currentThread(),file);
    }

    public void  newMobileScrollToElement( DataTable dataTable,String elementId) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        String textBoxValue = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(elementId);
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.mobileScrollToElementAndroid(Thread.currentThread(),textBoxValue,testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
    }

//    public void  dragAndDrop( String source,String target,DataTable dataTable) throws IOException, InterruptedException {
//        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
//        String indexSource = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(source);
//        String indexTarget = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(target);
//         this.webDriverService.dragDrop(Thread.currentThread(),indexTarget);
//    }
    public void  iSelectAFile( DataTable dataTable,String elementId) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        String textBoxValue = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(elementId);
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.mobileScrollToSearchedFile(Thread.currentThread(),textBoxValue,testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
    }
    public void  iSelectDocument( DataTable dataTable,String elementId) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        String textBoxValue = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(elementId);
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.mobileScrollToSearchedDocumentType(Thread.currentThread(),textBoxValue,testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
    }


    public void clickOnCustomerRegistrationBankZero( DataTable dataTable,String elementId) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        String textBoxValue = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(elementId);
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.clickOnCustomerRegistrationBankZero(Thread.currentThread(),textBoxValue ,testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
    }

    public void  mobileScrollToElementAndroidByClicking( DataTable dataTable,String elementId) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        String textBoxValue = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(elementId);
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.mobileScrollToElementAndroidByClicking(Thread.currentThread(),textBoxValue,testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
    }

    public void iSelectTypeOfAccount(String columnName, DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));


        String typeOfAccount = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(columnName);

        if (typeOfAccount == null || typeOfAccount.isEmpty()) {
            throw new IllegalArgumentException("The column '" + columnName + "' has no value in the DataTable.");
        }

        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", typeOfAccount)
        );

        if (webElementsRecord == null) {
            throw new IllegalArgumentException("No matching record found in the element locator CSV for '" + typeOfAccount + "'");
        }


        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1)
                ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex()
                : 0;


        this.webDriverService.click(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type")
        );
    }

    public void getToastMessage(String elementId,  DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        String textBoxValue = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(elementId);
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        String actualValue = this.webDriverService.getToastMessage( Thread.currentThread(),textBoxValue ,testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
        Assert.assertEquals(textBoxValue,actualValue);
    }

    public void iClickWebPageElement(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.click(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
    }
    public void iSelectDate(String date,String elementId, DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        String getDate = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(date);
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.selectDate(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"),getDate);
    }
    public void iClickRedo(String elementId, DataTable dataTable) throws IOException, InterruptedException {
         this.webDriverService.readText(Thread.currentThread());
    }

    public void iForceClickWebPageElement(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.iForceclick(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
    }
    public void getElementTextByTextBankZero(String textValue, String elementId, DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        String actualValue = this.webDriverService.readText(Thread.currentThread(), webElementsRecord.toMap(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
        Assert.assertTrue(actualValue.contains(textValue), String.format("Expexted Value is [%s], by got the value of [%s]", textValue, actualValue));

    }
    public void iHideKeyboard( DataTable dataTable) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.hideKeyboard(Thread.currentThread(), testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
    }


    public void iClickWithXCUIElementTypeStaticTextBankZero( DataTable dataTable,String value) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.clickWithXCUIElementTypeStaticTextBankZero(Thread.currentThread(),value ,testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
    }
    public void iCheckIfElementIsVisibleByTextBankZero( DataTable dataTable,String value) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.checkIfElementIsVisibleByTextBankZero(Thread.currentThread(),value ,testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
    }


    public void clickOnTypeOfIDDocumentOnRegistrationBankZero( DataTable dataTable,String value) throws IOException, InterruptedException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
        this.webDriverService.clickOnTypeOfIDDocumentOnRegistrationBankZero(Thread.currentThread(),value ,testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Element_Locator_Application_Type"));
    }



    public void iClickWebPageElements(String elementId) throws IOException, InterruptedException {
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        WebElement webElement = this.webDriverService.getWebElementWithByClass(Thread.currentThread(), webElementsRecord.get("WebDriver_Element_Selector_Value"), webElementsRecord.get("WebDriver_Element_Selector_Type"));
        this.webDriverService.click(webElement);

     }

    public void handlePaymentPushNotifications(String elementId, String amount, String recipient, String reference,String balance ,String sender, DataTable dataTable)  {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        String message = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(elementId);
        String getAmount = "R"+this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(amount);
        String getRecipient = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(recipient);
        String getReference = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(reference);
        String getSender = this.testContextThreadLocal.get().getTestInputDataCsvRecord().get(sender);
        LocalDateTime now = LocalDateTime.now();

        // Define the custom format
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd MMM-yy E");

        // Format the current date and time
        String dateTime = now.format(formatter);
        String newMessage = String.format(message,
                getAmount, getRecipient, getReference, dateTime, balance, getSender);
       Assert.assertTrue(this.webDriverService.handlePushNotification(Thread.currentThread(),newMessage));
    }




    public void iSelectElement(String elementId) throws IOException, InterruptedException {
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        WebElement webElement = this.webDriverService.getWebElementWithByClass(Thread.currentThread(), webElementsRecord.get("WebDriver_Element_Selector_Value"), webElementsRecord.get("WebDriver_Element_Selector_Type"));
        this.webDriverService.click(webElement);

    }

    synchronized public void afterTestCaseStep(Scenario scenario) {
        takeScreenshot(scenario);
    }

    synchronized private void takeScreenshot(Scenario scenario) {
        if (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 0) {
            int index = (this.testContextThreadLocal.get().getTestStepDataRecords().size() > 1) ? this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() : 0;
            String shouldTakeScreenshot = this.testContextThreadLocal.get().getTestStepDataRecords().get(index).get("Take_Screenshot");
            if (shouldTakeScreenshot.equalsIgnoreCase("Yes")) {
                scenario.attach(((TakesScreenshot) webDriverService.getWebDriverLocalManager().getWebDriver(Thread.currentThread())).getScreenshotAs(OutputType.BYTES), "image/png", "");
            }
        }
        this.testContextThreadLocal.get().setTestStepDataRecords(new ArrayList<>());
    }

    public void afterTestCaseExecution(Scenario scenario) {
        this.webDriverService.closeBrowser(Thread.currentThread());
    }

    public void iHaveTestDataFromAtRowNumberWithWebPageElementsListedOn(String testDataSheetCsvPath, String testDataSheetCsvRowIndex, String webDriverElementListCsvPath, DataTable dataTable) throws IOException {
        this.testContextThreadLocal.get().setTestStepDataRecords(dataTable.asMaps(String.class, String.class));
        this.testContextThreadLocal.get().setTestDataSheetCsvPath(testDataSheetCsvPath);
        this.testContextThreadLocal.get().setTestDataSheetCsvRowIndex(parseInt(testDataSheetCsvRowIndex));

        this.testContextThreadLocal.get().setWebDriverElementListCsvPath(webDriverElementListCsvPath);
        ((WebDriverTestContext) this.testContextThreadLocal.get()).setWebElementsRecords(CSVReader.getAllCSVRecords(this.testContextThreadLocal.get().getWebDriverElementListCsvPath()));


        this.testContextThreadLocal.get().setTestInputDataCsvRecord(CSVReader.getCSVRecord(this.testContextThreadLocal.get().getTestDataSheetCsvPath(), this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex() - 1));
        this.testContextThreadLocal.get().setAllCSVColumnHeaders(CSVReader.getAllCSVColumnHeaders(this.testContextThreadLocal.get().getTestDataSheetCsvPath()));
        this.testContextThreadLocal.get().setScenarioStepTextForLogging(new StringBuilder());
        System.setProperty("csvPath", this.testContextThreadLocal.get().getTestDataSheetCsvPath().toString());
        System.setProperty("rowIndex", testDataSheetCsvRowIndex);
    }

    public void iHaveWebPageElementsList(String webDriverElementListCsvPath) throws FileNotFoundException {
        this.testContextThreadLocal.get().setWebDriverElementListCsvPath(webDriverElementListCsvPath);
    }


    public void iSwitchTab() {
        this.webDriverService.switchBrowserTab(Thread.currentThread());

    }

    public void iSwitchMainTab() {
        this.webDriverService.switchBrowserMainTab(Thread.currentThread());

    }

    public void iClickWebPageElementtoLogin(String elementId) throws IOException, InterruptedException {
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        WebElement webElement = this.webDriverService.getWebElementWithByClass(Thread.currentThread(), webElementsRecord.get("WebDriver_Element_Selector_Value"), webElementsRecord.get("WebDriver_Element_Selector_Type"));
        this.webDriverService.click(webElement);
    }


    public void iSwitchOutFrame() {
        this.webDriverService.switchBrowserOutFrame(Thread.currentThread());

    }

    public void iClearText(String elementId) throws IOException {
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        WebElement webElement = this.webDriverService.getWebElementWithByClass(Thread.currentThread(), webElementsRecord.get("WebDriver_Element_Selector_Value"), webElementsRecord.get("WebDriver_Element_Selector_Type"));
//        this.webDriverService.clearTextBox(webElement);

    }


    public void iSwitchFrame(String elementId) throws IOException {
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        WebElement webElement = this.webDriverService.getWebElementWithByClass(Thread.currentThread(), webElementsRecord.get("WebDriver_Element_Selector_Value"), webElementsRecord.get("WebDriver_Element_Selector_Type"));
        this.webDriverService.switchBrowserFrame(Thread.currentThread(), webElement);

    }

    public void iSwitchPopup(String elementId) throws IOException, AWTException {
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        WebElement webElement = this.webDriverService.getWebElementWithByClass(Thread.currentThread(), webElementsRecord.get("WebDriver_Element_Selector_Value"), webElementsRecord.get("WebDriver_Element_Selector_Type"));

        Actions action = new Actions(this.webDriverService.getWebDriver(Thread.currentThread()));
        action.moveToElement(webElement).click().sendKeys("text comment").build().perform();

        System.setProperty("java.awt.headless", "false");
        Robot robot = new Robot();
        robot.keyPress(KeyEvent.VK_TAB);
        robot.keyRelease(KeyEvent.VK_TAB);

        robot.keyPress(KeyEvent.VK_TAB);
        robot.keyRelease(KeyEvent.VK_TAB);

        robot.keyPress(VK_ENTER);
        robot.keyRelease(VK_ENTER);

    }

    public void dropDownClick(WebElement elementAttr) {
        this.webDriverService.click(elementAttr);
    }

    public void iReadElementText(String elementId) throws IOException {
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        WebElement webElement = this.webDriverService.getWebElementWithByClass(Thread.currentThread(), webElementsRecord.get("WebDriver_Element_Selector_Value"), webElementsRecord.get("WebDriver_Element_Selector_Type"));
        referenceNumber = webElement.getText();
        System.setProperty("referenceNumber", referenceNumber);

    }

    public void iReadElementTextOTT(String elementId) throws IOException {
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        WebElement webElement = this.webDriverService.getWebElementWithByClass(Thread.currentThread(), webElementsRecord.get("WebDriver_Element_Selector_Value"), webElementsRecord.get("WebDriver_Element_Selector_Type"));
        referenceNumber = webElement.getText();
        System.setProperty(String.valueOf(this.testContextThreadLocal.get().getTestDataSheetCsvRowIndex()), referenceNumber);

    }


    public void iClickDropDown(String elementId, String elementId1) throws IOException {
        CSVRecord webElementsRecord = CSVReader.getCSVRecord(this.testContextThreadLocal.get().getWebDriverElementListCsvPath(), new SearchColumn("Record_Id", elementId));
        this.webDriverService.clickDropDown(Thread.currentThread(), webElementsRecord.get("WebDriver_Element_Selector_Value"), webElementsRecord.get("WebDriver_Element_Selector_Type"), elementId1);
    }


    public void iRefresh(Thread webDriverThread) throws IOException {
        this.webDriverService.refreshPage(webDriverThread);

    }


}