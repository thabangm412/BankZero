package za.co.bankzero.bankzero.stepdefination;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.After;
import io.cucumber.java.AfterStep;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.spring.CucumberContextConfiguration;
import jakarta.annotation.PostConstruct;
import org.openqa.selenium.WebElement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.core.env.Environment;
import org.yaml.snakeyaml.Yaml;
import za.co.bankzero.bankzero.BankzeroApplication;
import za.co.bankzero.bankzero.helper.BaseTestingStepDefinitionHelper;
import za.co.bankzero.bankzero.helper.UiTestingStepDefinitionHelper;
import za.co.bankzero.bankzero.utils.TimeStamps;
import za.co.bankzero.bankzero.xray.EnvironmentConfig;

import java.io.*;
import java.net.MalformedURLException;
import java.text.NumberFormat;
import java.util.Locale;
import java.util.Map;

@SpringBootTest(classes = BankzeroApplication.class)
@CucumberContextConfiguration
public class WebsiteUiTestingStepDefinition extends BaseStepDefinition {
    @Autowired
    @Qualifier("uiTestingStepDefinitionHelper")
    private BaseTestingStepDefinitionHelper helper;
    @PostConstruct
    public void init() {
        System.out.println("New WebsiteUiTestingStepDefinition Test loading...... " + Thread.currentThread().getId());
        System.setProperty("remoteURL", getProperty("remoteURL"));
        System.setProperty("remoteBrowser", getProperty("remoteBrowser"));
        System.setProperty("remoteType", getProperty("remoteType"));
        System.setProperty("executionEnvironment", getProperty("executionEnvironment"));
        uiTestingStepDefinitionHelperThreadLocal = new ThreadLocal<>();
    }

    private  String preferredName;
    private int currentBalance;
    private double transactionFee =1.50;
    public synchronized BaseTestingStepDefinitionHelper getTestingStepDefinitionHelper() {
        return this.uiTestingStepDefinitionHelperThreadLocal.get();
    }

    @Before(value = "@web_application")
    public void startUpDriver() throws MalformedURLException {

        this.uiTestingStepDefinitionHelperThreadLocal.set(helper);
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).setUp();
    }



    @And("I a {string} {string} opened")
    public void iAOpened(String deviceType, String applicationType) throws IOException {
        String timeStamp = TimeStamps.generateTimeStamp("yyyyMMddhhmmssSSS", 0);
        preferredName = "Automation" + timeStamp;
        Runtime.getRuntime().exec("adb shell settings put global policy_control immersive.full=za.co.neolabs.bankzero");
        System.out.println("Permission dialogs disabled globally.");

        try {


            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.CAMERA");
            System.out.println("Camera permission granted.");
            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.RECORD_AUDIO");
            System.out.println("Microphone permission granted.");
            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.POST_NOTIFICATIONS");
            System.out.println("Notification permission granted.");
            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.READ_EXTERNAL_STORAGE");

            System.out.println("Read external storage permission granted.");

            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.WRITE_EXTERNAL_STORAGE");

            System.out.println("Write external storage permission granted.");

            // For Android 13+ (API 33 and above)

            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.READ_MEDIA_IMAGES");

            System.out.println("Read media images permission granted.");

            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.READ_MEDIA_VIDEO");

            System.out.println("Read media video permission granted.");

            // Grant location permissions
            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.ACCESS_FINE_LOCATION");
            System.out.println("Precise location (GPS) permission granted.");

            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.ACCESS_COARSE_LOCATION");
            System.out.println("Approximate location (network-based) permission granted.");

            // For background location access (Android 10+)
            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.ACCESS_BACKGROUND_LOCATION");
            System.out.println("Background location permission granted.");

            Process process = Runtime.getRuntime().exec("adb shell dumpsys window | grep mCurrentFocus");
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line;
            String currentActivity = null;
            Runtime.getRuntime().exec("adb shell pm list permissions | grep za.co.neolabs.bankzero");
            while ((line = reader.readLine()) != null) {
                currentActivity = line;
            }

            // Close the BufferedReader
            reader.close();
            if (currentActivity != null && currentActivity.contains("za.co.neolabs.bankzero")) {
                Runtime.getRuntime().exec("adb shell am force-stop za.co.neolabs.bankzero");
            } else if (currentActivity != null) {
                System.out.println("SplashActivity is NOT active. Current Activity: " + currentActivity);
            } else {
                System.out.println("Unable to detect the current activity.");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).startUpDriver(deviceType, applicationType);

    }

    @And("I a {string} {string} opened customer Registration")
    public void iAOpenedOnCUstomerReg(String deviceType, String applicationType) throws IOException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).startUpDriver(deviceType, applicationType);
        String timeStamp = TimeStamps.generateTimeStamp("yyyyMMddhhmmssSSS", 0);
        preferredName = "Automation" + timeStamp;
        try {
            Runtime.getRuntime().exec("adb shell settings put global policy_control immersive.full=*");
            System.out.println("Permission dialogs disabled globally.");
        } catch (IOException e) {
            e.printStackTrace();
        }

        try {

            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.CAMERA");
            System.out.println("Camera permission granted.");
            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.RECORD_AUDIO");
            System.out.println("Microphone permission granted.");
            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.POST_NOTIFICATIONS");
            System.out.println("Notification permission granted.");
            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.READ_EXTERNAL_STORAGE");

            System.out.println("Read external storage permission granted.");

            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.WRITE_EXTERNAL_STORAGE");

            System.out.println("Write external storage permission granted.");

            // For Android 13+ (API 33 and above)

            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.READ_MEDIA_IMAGES");

            System.out.println("Read media images permission granted.");

            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.READ_MEDIA_VIDEO");

            System.out.println("Read media video permission granted.");

            // Grant location permissions
            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.ACCESS_FINE_LOCATION");
            System.out.println("Precise location (GPS) permission granted.");

            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.ACCESS_COARSE_LOCATION");
            System.out.println("Approximate location (network-based) permission granted.");

            // For background location access (Android 10+)
            Runtime.getRuntime().exec("adb shell pm grant za.co.neolabs.bankzero android.permission.ACCESS_BACKGROUND_LOCATION");
            System.out.println("Background location permission granted.");



            // Add more permissions if needed
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @And("I enter email on {string} text box")
    public void iEnterEmailOnTextBox(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        String email = preferredName+ "@bankzero.co.za";
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iEnterAutogeneratedValueOnTextBox(elementId,email, dataTable);

    }
    @And("I a clear caches")
    public void clearCaches() throws IOException {
        Runtime.getRuntime().exec("adb shell pm clear za.co.neolabs.bankzero");
    }

    @When("I use {string} number to clear user profile")
    public void clearUserData(String number,DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).clearUserData(number, dataTable);
    }


    @When("I use the {string} number to retrieve {string}")
    public void getOtp(String number,String elementId,DataTable dataTable) throws IOException, InterruptedException {
        Thread.sleep(4000);
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).enterOtpInTextBox(number,elementId, dataTable);

    }
    @Given("I have test data from {string} at row number {string} with web page elements listed on {string}")
    public void newaccountiHaveTestDataFromAtRowNumberWithWebPageElementsListedOn(String testDataSheetCsvPath, String testDataSheetCsvRowIndex, String webDriverElementListCsvPath, DataTable dataTable) throws IOException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iHaveTestDataFromAtRowNumberWithWebPageElementsListedOn(testDataSheetCsvPath, testDataSheetCsvRowIndex, webDriverElementListCsvPath, dataTable);
    }
    @Given("A browser is opened with {string} website url")
    public void aBrowserIsOpenedWithWebsiteUrl(String websiteName, DataTable dataTable) throws InterruptedException, IOException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).aBrowserIsOpenedWithWebsiteUrl(websiteName, dataTable);
    }

    @Then("{string} should be displayed on {string} web page element")
    public void shouldBeDisplayedOnWebPageElement(String textValueKey, String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).shouldBeDisplayedOnWebPageElement(textValueKey, elementId, dataTable);
    }

    @Then("PopUp text {string} should be displayed on screen")
    public void getToastMessage(String textValue, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).getToastMessage(textValue, dataTable);
    }
    @Then("I click PopUp toast button {string}")
    public void clickButtonByText(String textValue, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).clickButtonByText(textValue, dataTable);
    }


    @And("I enter a value on {string} text box")
    public void iEnterAValueOnTextBox(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iEnterAValueOnTextBox(elementId, dataTable);

   }
    @And("I copy {string} file to the phone")
    public void iCopyFile(String elementId, DataTable dataTable) throws Exception {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iCopyFile(dataTable,elementId);

    }
    @When("I pressEnter {string} web page element")
    public void pressEnterOnCheckbox(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).pressEnterOnCheckbox(elementId, dataTable);
    }
    @And("I clear and write on {string} text box")
    public void clearAndWriteText(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).clearAndWriteText(elementId, dataTable);

    }
    @When("I wait for {string} web page element to disappear")
    public void waitForInActiveElement(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).waitForInActiveElement(elementId, dataTable);
    }
    @When("I click {string} web page element website")
    public void iClickWebPageElementsOnWeb(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iClickWebPageElementsOnWeb(elementId, dataTable);
    }
    @When("I tap {string} web page element")
    public void iTapWebPageElement(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iTapWebPageElement(elementId, dataTable);
    }
    @When("I force click {string} web page element")
    public void iForceClickWebPageElement(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).forceClickWebPageElement(elementId, dataTable);
    }
   @And("I clear and enter a value on {string} text box")
    public void iClearAndEnterAValueOnTextBox(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iClearAndEnterAValueOnTextBox(elementId, dataTable);

    }
 @And("I clear and enter a random names on {string} text box")
    public void iClearAndEnterARandomValueOnTextBox(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iClearAndEnterARandomValueOnTextBox(elementId, dataTable);

    }


    @And("I Generate SA ID number and enter a value on {string} text box")
    public void iGenerateSAIDNumberEnterAValueOnTextBox(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iGenerateSAIDNumberAndEnterAValueOnTextBox(elementId, dataTable);

    }

    @And("I Generate SA Cell number and enter a value on {string} text box")
    public void iGenerateSACellNumberEnterAValueOnTextBox(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iGenerateSACellNumberAndEnterAValueOnTextBox(elementId, dataTable);

    }

    @When("I click on {string} selecting with By element type {string}")
    public void iClickOnSelectingWithByElementType(String selectionValueOrPattern, String byClassType) throws InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iClickOnSelectingWithByElementTypeAndWait(selectionValueOrPattern, byClassType);
    }
    //
    @When("I click {string} web page element")
    public void SelectRecipientiClickWebPageElement(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iClickWebPageElement(elementId, dataTable);
    }

    @When("I pick a date {string} with {string} web page element")
    public void selectDate(String date,String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iSelectDate(date,elementId, dataTable);
    }
    @When("I click redo")
    public void clickRedo(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iClickRedo(elementId, dataTable);
    }

    @When("I scroll into view {string} web page element")
    public void ScrollIntoView(String elementId) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iScrollToView(elementId);
    }

 @When("I clickAndHold {string} web page element")
    public void clickAndHold(String elementId,DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).ClickAndHold(elementId,dataTable);
    }

    @When("I select {string} option from the table")
    public void iSelectOptionWebPageElement(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iClickWebPageElement(elementId, dataTable);
    }

    @Then("{string} should be displayed on {string} with By element type {string}")
    public void shouldBeDisplayedOnMjjYudWithByElementType(String expectedValue, String selectionValueOrPattern, String byClassType) {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).shouldBeDisplayedOnMjjYudWithByElementType(expectedValue, selectionValueOrPattern, byClassType);
    }




    @And("I get five digit otp number on {string} text box")
    public void enterOtpInTextBox(String elementId, DataTable dataTable) throws IOException, InterruptedException {
       // ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).enterOtpInTextBox(elementId, dataTable,);

    }

    @AfterStep(order = 0)
    synchronized public void afterTestCaseStep(Scenario scenario) {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).afterTestCaseStep(scenario);
    }



    @And("I click on xpath containing {string} on customerRegistration id Type")
    public void clickOnTypeOfIDDocumentOnRegistrationBankZero(String value, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).clickOnTypeOfIDDocumentOnRegistrationBankZero(dataTable, value);
    }


    @Then("{string} should be displayed on push notification with payment amount {string},recipient {string},reference {string} and sender {string}")
    public void handlePushNotification(String elementId,String amount,String recipient,String reference,String sender, DataTable dataTable)  {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).handlePaymentPushNotifications( elementId,amount,recipient,reference, "R"+ currentBalance,sender,dataTable);
    }

    @And("I use {string} to pay {string} for payment option {string}")
    public void iPayMany(String csvFile,String recipientId,String paymentOption, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iPayMany(csvFile,recipientId,paymentOption,dataTable);

    }

    @And("I wait")
    public void iWait() throws IOException, InterruptedException {

        Thread.sleep(2000);

    }

    @After(order = 2, value = "@web_application")
    synchronized public void afterTestCase(Scenario scenario) {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).afterTestCaseExecution(scenario);
    }



    @And("I click {string} application")
    public void iClickApplication(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iClickWebPageElement(elementId, dataTable);
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iEnterAValueOnTextBox(elementId, dataTable);

    }


    @And("I use {string} to to validate payment {string}")
    public void iValidateMultiplePayment(String csvFile,String csvSplitBy, DataTable dataTable) throws IOException, InterruptedException {
        String line;
        boolean isHeader = true; // To skip the header row

        try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) {
            while ((line = br.readLine()) != null) {
                if (isHeader) {
                    isHeader = false; // Skip the first line (header)
                    continue;
                }
                // Use the delimiter to split the line into parts
                String[] parts = line.split(csvSplitBy);

                // Return the full line
                ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iCheckIfElementIsVisibleByTextBankZero(dataTable,parts[0]);
                ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iCheckIfElementIsVisibleByTextBankZero(dataTable,parts[2]);
                ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iCheckIfElementIsVisibleByTextBankZero(dataTable,parts[3].trim());

            }
        } catch (IOException e) {
            e.printStackTrace();
        }


    }
    @And("Read the current Balance of element {string} and subtract {string}{string} from it")
    public void getCurrentBalance(String elementId, String amountToBePaid,String extraCharge, DataTable dataTable) throws IOException {
        String initialBalanceStr = ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).ReadBalance(elementId, dataTable).replace("\u00A0", "").trim();
        String getAmountToBePaid = ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).returnDataFromCsvFile(amountToBePaid, dataTable).replace("\u00A0", "").trim();
        String getExtraCharge = ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).returnDataFromCsvFile(extraCharge, dataTable).replace("\u00A0", "").trim();
        double initialBalance = Double.parseDouble(initialBalanceStr);
        double amountToBePaidValue = Double.parseDouble(getAmountToBePaid.replace("R", ""));
        currentBalance = (int) formatCurrency(initialBalance - (amountToBePaidValue + Double.parseDouble(getExtraCharge)));
    }

    public double formatCurrency(double amount) {
        NumberFormat formatter = NumberFormat.getInstance(new Locale("en", "ZA"));
        formatter.setMinimumFractionDigits(0);
        formatter.setMaximumFractionDigits(0);
        return  Double.parseDouble(formatter.format(amount).replaceAll("\\W", ""));
    }


    @And("I hide keyboard")
    public void iHideKeyboard( DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iHideKeyboard( dataTable);

    }
    @And("I click on xpath containing {string}")
    public void iClickWithXCUIElementTypeStaticText(String value, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iClickWithXCUIElementTypeStaticText(dataTable, value);
    }

    @And("I click on xpath containing {string} nealabs")
    public void iClickWithXCUIElementTypeStaticTextNealabs(String value, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iClickWithXCUIElementTypeStaticTextBankZero( dataTable,value);

    }@And("I scroll using xpath containing {string}")
    public void iMobileScrollToElement(String value, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).newMobileScrollToElement( dataTable,value);

    }
    @And("I scroll and select file {string} from the device")
    public void iSelectAFile(String value, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iSelectAFile( dataTable,value);

    }

//    @And("I drag and drop {string} to {string}")
//    public void dragAndDrop(String source,String target, DataTable dataTable) throws IOException, InterruptedException {
//        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).dragAndDrop( source,target,dataTable);
//
//    }

    @And("I scroll and select document {string} from the device")
    public void iSelectDocument(String value, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iSelectDocument( dataTable,value);

    }

    @And("I select {string}" )
    public void mobileScrollToElementAndroidByClicking(String value, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).mobileScrollToElementAndroidByClicking( dataTable,value);

    }

    @When("I select {string} account")
    public void iSelectAccountType(String columnName, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iSelectTypeOfAccount(columnName, dataTable);
    }

    @And("I click on xpath containing {string} on customerRegistration")
    public void clickOnCustomerRegistrationBankZero(String value, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).clickOnCustomerRegistrationBankZero(dataTable, value);
    }

    @When("I click on {string} selecting with By element type")
    public void iClickOnSelectingWithByElementType(WebElement elementAttr) {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).dropDownClick(elementAttr);
    }
    @And("I scroll down to view {string}")
    public void iScrollDown(String elementId) throws InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iScrollDown(elementId);
    }

    @Then("I switch tab to Main homepage")
    public void iSwitchTabToMainHomepage() {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iSwitchMainTab();
    }

    @And("A browser is opened with {string} website url in UAT")
    public void aBrowserIsOpenedWithWebsiteUrlInUAT(String url, DataTable dataTable) throws InterruptedException, IOException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).aBrowserIsOpenedWithWebsiteUrl(url, dataTable);
    }


    @And("I enter {string} into the search box")
    public void iEnterIntoTheSearchBox(String elementId, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iEnterAValueOnTextBox(elementId, dataTable);
    }

    @And("I enter {string} into the {string} text box")
    public void iEnterIntoTheTextBox(String elementId, String elementId1, DataTable dataTable) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iEnterAValueOnTextBox(elementId, dataTable);
    }

    @And("I click on {string} to view messages")
    public void iClickOnToViewMessages(String elementId) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iClickWebPageElements(elementId);
    }


    @And("I click on {string} and Switch to Main Tab")
    public void iClickOnAndSwitchToMainTab(String elementId) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iClickWebPageElementtoLogin(elementId);
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iSwitchMainTab();
    }

    @And("the user enters {string}")
    public void theUserEnters(String elementId) throws IOException, InterruptedException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iEnterAValueOnTextBoxonFlightDeck(elementId);
    }

    @And("I refresh page")
    public void iRefreshPage() throws IOException {
        ((UiTestingStepDefinitionHelper) getTestingStepDefinitionHelper()).iRefresh(Thread.currentThread());
    }



    public String getProperty(String name) {
        Yaml yaml = new Yaml();
        ApplicationContext context = new AnnotationConfigApplicationContext(EnvironmentConfig.class);
        Environment environment = context.getBean(Environment.class);
        // Retrieve the Environment bean

        try (InputStream inputStream = getClass().getResourceAsStream("/application-remote.yml")) {
            Map<String, Object> yamlData = yaml.load(inputStream);

            return String.valueOf(yamlData.get(name));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @After
    public void tearDown() throws IOException {
        Runtime.getRuntime().exec("adb shell am force-stop za.co.neolabs.bankzero");
    }


}
