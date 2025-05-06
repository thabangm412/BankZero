package za.co.bankzero.bankzero.helper;

import com.ibm.mq.*;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.Scenario;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.csv.CSVRecord;
import org.apache.commons.io.FileUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.simple.parser.ParseException;
import org.junit.jupiter.api.Assertions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.xml.sax.SAXException;
import za.co.commandquality.cmdq_automation_testing_core.model.HttpMethodType;
import za.co.commandquality.cmdq_automation_testing_core.model.RestAssuredBasicAuth;
import za.co.commandquality.cmdq_automation_testing_core.model.context.AssertionTestContext;
import za.co.commandquality.cmdq_automation_testing_core.model.context.RestApiTestContext;
import za.co.commandquality.cmdq_automation_testing_core.model.context.TestContext;
import za.co.commandquality.cmdq_automation_testing_core.model.database.SearchColumn;
import za.co.commandquality.cmdq_automation_testing_core.service.Diff;
import za.co.commandquality.cmdq_automation_testing_core.util.CSVReader;
import za.co.commandquality.cmdq_automation_testing_core.util.DocumentFlattenerUtil;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.concurrent.atomic.AtomicReference;

@Data
@Slf4j
@Component
@Scope("prototype")
@Qualifier("restApiTestingStepDefinitionHelper")
public class RestApiTestingStepDefinitionHelper extends BaseTestingStepDefinitionHelper {
       // @Autowired
   //private RestApiTestContext restApiTestContext;
    private String host = "192.168.23.1";
    private int port = 1414;
    private String channel = "BOLPES.CLIENT";
    private static String qManager = "MQ35";
    private static String qName = "AFR.MAX.2.BLPS.SIT";
    //private String qNameBolpes = "VOLPAY.TO.ESB.BOLPESPAIN001.TX";
    private String request;
    private static String uniqueIdentifier;
    //On ESB its: VOLPAY.TO.ESB.BOLPESPAIN001.TX  , think on Volpay side and Appliance: VOLPAY_TO_ESB_BOLPESPAIN001.TX
    private String endToEndId = "";
    private String requestEndpoint;

    @Autowired
    @Qualifier("restApiTestContext")
    private TestContext restApiTestContext;

    public void mqSend() throws MQException {
        try {

            int openOptions = MQC.MQOO_INPUT_AS_Q_DEF | MQC.MQOO_OUTPUT;
            //Create a Hashtable with required properties
            Hashtable properties = new Hashtable<String, Object>();
            properties.put("hostname", host);
            properties.put("port", port);
            properties.put("channel", channel);
            properties.put("user.name", username);
            //System.setProperty("user.name", "C860785");

            //Create an instance of qManager
            MQQueueManager qMgr = new MQQueueManager(qManager, properties);

            //Connect to the Queue
            MQQueue queue = qMgr.accessQueue(qName, openOptions);

            //Creating the mqmessage
            MQMessage mqMsg = new MQMessage();
            mqMsg.writeString(request);

            MQPutMessageOptions pmo = new MQPutMessageOptions();

            queue.put(mqMsg, pmo);

            queue.close();
            qMgr.disconnect();

        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    //    synchronized
    public void startUp() {
        System.out.println("New RestApiTestingStepDefinitionHelper Test loading...... " + Thread.currentThread().getId() + " : " + this.hashCode() + " : " + restApiTestContext.toString() + " : " + restApiTestContext.hashCode());

        ((RestApiTestContext) restApiTestContext).setRestMessageContextMap(new HashMap<>());
        restApiTestContext.setDatabaseResultsSetMap(new HashMap<>());

        restApiTestContext.setDatabaseQueryStatements(new StringWriter());
        restApiTestContext.setAssertionFailures(new StringWriter());

        restApiTestContext.setTestResults(new Diff());
        restApiTestContext.setTestResultsList(new ArrayList<>());

        restApiTestContext.setScenarioStepTextForLogging(new StringBuilder());
    }

    public void iHaveServiceRequestPayloadDataFromAtRowNumberFor(String serviceUnderTest, String testDataSheetCsvPath, String testDataSheetCsvRowIndex, String testCaseDescription) throws IOException {
        restApiTestContext.setTestDataSheetCsvPath(testDataSheetCsvPath);
        restApiTestContext.setTestDataSheetCsvRowIndex(Integer.parseInt(testDataSheetCsvRowIndex));
        restApiTestContext.setTestCaseDescription(testDataSheetCsvRowIndex + "_" + testCaseDescription.trim().replace(" ", "_"));
        restApiTestContext.setServiceUnderTest(serviceUnderTest);
        restApiTestContext.setMainTestResultsResourcesDirectory(serviceUnderTest);
        restApiTestContext.setTestInputDataCsvRecord(CSVReader.getCSVRecord(restApiTestContext.getTestDataSheetCsvPath(), restApiTestContext.getTestDataSheetCsvRowIndex() - 1));
        restApiTestContext.setAllCSVColumnHeaders(CSVReader.getAllCSVColumnHeaders(restApiTestContext.getTestDataSheetCsvPath()));
        restApiTestContext.setScenarioStepTextForLogging(new StringBuilder());
        System.setProperty("csvPath", restApiTestContext.getTestDataSheetCsvPath().toString());//set csv path for xray
        System.setProperty("rowIndex", testDataSheetCsvRowIndex);
    }

    public void iHaveCalledRESTAPIServiceUsingConfigurationAndInformationFromADataTable(String serviceId, DataTable dataTable) throws IOException, ParseException, ParserConfigurationException, SAXException, TransformerException {
        List<Map<String, String>> dataRecords = dataTable.asMaps(String.class, String.class);
        restApiTestContext.setScenarioStepTextForLogging(new StringBuilder());
        callRestApiService(serviceId, dataRecords, restApiTestContext.getTestDataSheetCsvRowIndex());
//        mqSend();

//        String[]

    }

    public void iQueryDatabaseForDataWithColumnNamesDefinedInCsvFileCsvColumnNameAndQueryStatementFromQueryStatementColumnNameQueryStatementSearchCriteriaColumnNameValue(String dbName, String resultset_id, String dbColumnNamesFilePath, String dbColumnNamesCsvColumn, String filePathWithQueryStatements, String queryStatementColumnName, String searchCriteriaColumnName, String searchCriteriaColumnValue) throws IOException {
        super.iQueryDatabaseForDataWithColumnNamesDefinedInCsvFileCsvColumnNameAndQueryStatementFromQueryStatementColumnNameQueryStatementSearchCriteriaColumnNameValue(dbName, resultset_id, dbColumnNamesFilePath, dbColumnNamesCsvColumn, filePathWithQueryStatements, queryStatementColumnName, searchCriteriaColumnName, searchCriteriaColumnValue, restApiTestContext);
    }

    public void dataFromShouldBeReturnedAsPerExpectedResultsFromCsvDataSheetWithFieldsToExclude(String serviceId, String actualValueSourceType, String controlTestSourceCsvPath, String fieldsToExcludePath) throws Exception {
        CSVRecord inputDataRecord = CSVReader.getCSVRecord(restApiTestContext.getTestDataSheetCsvPath(), restApiTestContext.getTestDataSheetCsvRowIndex() - 1);
        String testCaseId = inputDataRecord.get("Test_Case_Id");
        List<String> fieldsToExclude = getFieldsToExclude(fieldsToExcludePath);
        fieldsToExclude.add("Test_Case_Id");
        AssertionTestContext assertionTestContext = AssertionTestContext.builder().build();
        assertionTestContext.setResultsId(testCaseId);
        assertionTestContext.setFieldsToExclude(new HashSet<>(fieldsToExclude));
        assertionTestContext.setCsvSearchCriteria(new SearchColumn("Test_Case_Id", testCaseId));
        assertionTestContext.setTestSourceXml(restApiTestContext, actualValueSourceType, serviceId);
        assertionTestContext.setControlCsvSourcePath(Paths.get(restApiTestContext.getTestDataParentPath() + controlTestSourceCsvPath));

        verifier.setAssertionTestContext(assertionTestContext);
        Diff diff = verifier.verify();
        restApiTestContext.getTestResultsList().add(diff);
        restApiTestContext.getAssertionFailures().append(diff.getAssertionErrorMessages());

    }

    //Get
    public void iCallServiceRequestAtRowNumberFor(String serviceUnderTest, String testDataSheetCsvPath, String testDataSheetCsvRowIndex, String testCaseDescription) throws IOException {
        if (!testDataSheetCsvPath.isEmpty()) {
            restApiTestContext.setTestDataSheetCsvPath(testDataSheetCsvPath);
            restApiTestContext.setTestDataSheetCsvRowIndex(Integer.parseInt(testDataSheetCsvRowIndex));
            restApiTestContext.setTestCaseDescription(testDataSheetCsvRowIndex + "_" + testCaseDescription.trim().replace(" ", "_"));
            restApiTestContext.setServiceUnderTest(serviceUnderTest);
            restApiTestContext.setMainTestResultsResourcesDirectory(serviceUnderTest);
            restApiTestContext.setTestInputDataCsvRecord(CSVReader.getCSVRecord(restApiTestContext.getTestDataSheetCsvPath(), restApiTestContext.getTestDataSheetCsvRowIndex() - 1));
            restApiTestContext.setAllCSVColumnHeaders(CSVReader.getAllCSVColumnHeaders(restApiTestContext.getTestDataSheetCsvPath()));
            restApiTestContext.setScenarioStepTextForLogging(new StringBuilder());
            System.setProperty("csvPath", restApiTestContext.getTestDataSheetCsvPath().toString());//set csv path for xray
            System.setProperty("rowIndex", testDataSheetCsvRowIndex);

        }
    }

    public void responseFromShouldBeReturnedAsPerExpectedResultsFromCsvDataSheetWithFieldsToExclude(String serviceId, String actualValueSourceType, String controlTestSourceCsvPath, String fieldsToExcludePath) throws Exception {
        CSVRecord inputDataRecord = CSVReader.getCSVRecord(restApiTestContext.getTestDataSheetCsvPath(), restApiTestContext.getTestDataSheetCsvRowIndex() - 1);
        String testCaseId = inputDataRecord.get("Test_Case_Id");
        List<String> fieldsToExclude = getFieldsToExclude(fieldsToExcludePath);
        fieldsToExclude.add("Test_Case_Id");
        AssertionTestContext assertionTestContext = AssertionTestContext.builder().build();
        assertionTestContext.setResultsId(testCaseId);
        assertionTestContext.setFieldsToExclude(new HashSet<>(fieldsToExclude));
        assertionTestContext.setCsvSearchCriteria(new SearchColumn("Test_Case_Id", testCaseId));
        assertionTestContext.setTestSourceJson(restApiTestContext, actualValueSourceType, serviceId);
        assertionTestContext.setControlCsvSourcePath(Paths.get(restApiTestContext.getTestDataParentPath() + controlTestSourceCsvPath));

        verifier.setAssertionTestContext(assertionTestContext);
        Diff diff = verifier.verify();
        restApiTestContext.getTestResultsList().add(diff);
        restApiTestContext.getAssertionFailures().append(diff.getAssertionErrorMessages());
    }


    private synchronized List<String> getFieldsToExclude(String fieldsToExcludePath) {
        List<String> fieldsToExclude = new ArrayList<>();
        try {
            List<CSVRecord> tempFieldToExclude = CSVReader.getAllDataRecords(Paths.get(restApiTestContext.getTestDataParentPath() + fieldsToExcludePath));
            tempFieldToExclude.stream().forEach(record -> fieldsToExclude.add(record.get(0)));
            return fieldsToExclude;
        } catch (NoSuchFileException e) {
            return new ArrayList<>();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void callRestApiService(String serviceId, List<Map<String, String>> dataRecords, int testDataSheetCsvRowIndex) throws IOException, ParseException, ParserConfigurationException, SAXException, TransformerException {
        int dataRecordsIndex = 0;
        if (dataRecords.size() > 1) {
            dataRecordsIndex = testDataSheetCsvRowIndex - 1;
        }
        CSVRecord serviceConfigurationUriData = CSVReader.getCSVRecord(Paths.get(System.getProperty("user.dir") + "/src/test/resources/" + restApiTestContext.getProductUnderTest() + File.separator + "web_services_configuration" + File.separator + restApiTestContext.getTestEnvironment() + File.separator + dataRecords.get(dataRecordsIndex).get("Service_Configuration_Csv_Path")), new SearchColumn("Service_To_Call_Id", serviceId));
        String httpHeaders = dataRecords.get(dataRecordsIndex).get("http_headers");
        Map<String, String> headers = (httpHeaders != null) ? getHttpHeaders(Paths.get(httpHeaders)) : new HashMap<>();


        if ((dataRecords.get(dataRecordsIndex).get("AccessToken_Service_Id") != null) && !(dataRecords.get(dataRecordsIndex).get("AccessToken_Service_Id").trim().isEmpty())) {
            String authorizationBearerCode = getAuthorizationBearerCode(dataRecords, dataRecordsIndex, serviceConfigurationUriData);
            headers.replace(dataRecords.get(dataRecordsIndex).get("http_authorization_property_name"), headers.get(dataRecords.get(dataRecordsIndex).get("http_authorization_property_name")).replace("{{access-token}}", authorizationBearerCode));
            headers.put("x-obo-token", authorizationBearerCode);

            if (restApiTestContext.getTestCaseDescription().equalsIgnoreCase("2_empty_x-obo-token_header"))
                headers.replace("x-obo-token", "");
        }

        if ((dataRecords.get(dataRecordsIndex).get("rest_api_auth_form_params_properties_path") != null) && !(dataRecords.get(dataRecordsIndex).get("rest_api_auth_form_params_properties_path").trim().isEmpty())) {
            ((RestApiTestContext) restApiTestContext).getRestMessageContextMap().put(serviceId, webServiceClient.getAccessTokenByFormParams(serviceConfigurationUriData.get("baseUrl"), serviceConfigurationUriData.get("contextPath"), getHttpMethodType(serviceConfigurationUriData.get("http_method")), headers, getFormParams(Paths.get(dataRecords.get(dataRecordsIndex).get("rest_api_auth_form_params_properties_path"))), new RestAssuredBasicAuth(username, password)));
        } else {
            String requestPayload = getRequestPayloadBody(dataRecords, dataRecordsIndex, serviceConfigurationUriData);
            ((RestApiTestContext) restApiTestContext).getRestMessageContextMap().put(serviceId, webServiceClient.callRestWebService(serviceConfigurationUriData.get("baseUrl"), getContextPath(serviceConfigurationUriData, restApiTestContext.getTestInputDataCsvRecord()), getHttpMethodType(serviceConfigurationUriData.get("http_method")), requestPayload, headers));
            requestEndpoint = serviceConfigurationUriData.get("baseUrl") + getContextPath(serviceConfigurationUriData, restApiTestContext.getTestInputDataCsvRecord());
        }

    }

    private String getContextPath(CSVRecord contextCsvRecord, CSVRecord testDataCsvRecord) {
        AtomicReference<String> newContext = new AtomicReference<>(contextCsvRecord.get("contextPath"));

        if (contextCsvRecord.get("http_method").equalsIgnoreCase("GET")) {
            String[] keysArray = contextCsvRecord.get("contextPath").split("&");
            testDataCsvRecord.toMap().forEach(
                    (key, value) -> {
                        newContext.getAndSet(replaceParamsOnContextPathString(newContext.get(), key, value, keysArray[keysArray.length - 1]));
                    });
        }
        if (contextCsvRecord.get("http_method").equalsIgnoreCase("POST")) {
            String[] keysArray = new String[]{contextCsvRecord.get("contextPath")};
            testDataCsvRecord.toMap().forEach(
                    (key, value) -> {
                        newContext.getAndSet(replaceParamsOnContextPathString(newContext.get(), key, value, keysArray[keysArray.length - 1]));
                    });
        }

        String updatedContaxtPath = newContext.get();

        if (updatedContaxtPath.endsWith("&")) {
            StringBuilder stringBuilder = new StringBuilder(updatedContaxtPath);
            stringBuilder.deleteCharAt(stringBuilder.lastIndexOf("&"));
            updatedContaxtPath = stringBuilder.toString();
        }
        return updatedContaxtPath;
    }

    public String replaceParamsOnContextPathString(String initial, String key, String value, String lastKey) {
        boolean isEmpty = value.isEmpty() && !lastKey.equalsIgnoreCase("{{" + key + "}}");
        return isEmpty ? initial.replace("{{" + key + "}}&", value) : initial.replace("{{" + key + "}}", value);
    }

    private String getRequestPayloadBody(List<Map<String, String>> dataRecords, int dataRecordsIndex, CSVRecord serviceConfigurationUriData) throws IOException, TransformerException, ParseException, ParserConfigurationException, SAXException {
        String requestPayload = "";
        if (dataRecords.get(dataRecordsIndex).get("Request_Sample_and_Base_Data") != null && !dataRecords.get(dataRecordsIndex).get("Request_Sample_and_Base_Data").isEmpty()) {
            Path jsonRequestPayloadPath = Paths.get(restApiTestContext.getTestDataParentPath() + dataRecords.get(dataRecordsIndex).get("Request_Sample_and_Base_Data"));
            requestPayload = FileUtils.readFileToString(jsonRequestPayloadPath.toFile(), Charset.defaultCharset());
            requestPayload = populateJsonRequestPayloadFromCsvRecord(restApiTestContext.getTestInputDataCsvRecord(), restApiTestContext.getAllCSVColumnHeaders(), requestPayload);
        }
        System.setProperty("requestPayload", requestPayload);

        return requestPayload;
    }

    private String populateXmlRequestPayloadFromCsvRecord(CSVRecord csvRecord, Set<String> allCSVColumnHeaders, String requestPayload) throws TransformerException, IOException, ParseException, ParserConfigurationException, SAXException {
        Map<String, Object> map = DocumentFlattenerUtil.flattenXmlToMap(requestPayload);

        allCSVColumnHeaders.forEach(header -> {
            String value = csvRecord.get(header);
//            if (value != null && !value.isEmpty()) {
            value = replaceRandomValues(header, value);
            map.replace(header, value);
//            }
        });
        return DocumentFlattenerUtil.addAttributesToXmlRequestPaylod(DocumentFlattenerUtil.unFlattenMapToXml(map, requestPayload), requestPayload, csvRecord, allCSVColumnHeaders);
    }

    private String replaceRandomValues(String header, String value) {

        if (header.contains("MsgId")) {
            value = returnValueFromCSVSheetOrGenerate(value);
        }
        if (header.contains("CreDtTm") || header.contains("dateTime")) {
            if (value.contains("#"))
                return value.replace("#", "");
            else
                return String.valueOf(java.time.LocalDateTime.now());
        }
        if (header.contains("ReqdExctnDt")) {
            value = returnValueFromCSVSheetOrGenerateDate(value);
        }
        if (header.contains("EndToEndId")) {
            value = returnValueFromCSVSheetOrGenerate(value);
            endToEndId = value;
        }
        if (header.contains("InstrId"))
            value = endToEndId;
        if (header.contains("PmtInfId"))
            value = returnValueFromCSVSheetOrGenerate(value);

        return value;
    }

    private String returnValueFromCSVSheetOrGenerate(String value) {

        if (value.contains("#")) {
            return value.replace("#", "");
        } else if (value.isEmpty()) {
            return null;
        } else {
            return "BLL" + String.valueOf(UUID.randomUUID()).replace("-", "").toUpperCase().substring(19);
        }
    }

    private String returnValueFromCSVSheetOrGenerateDate(String value) {

        if (restApiTestContext.getTestCaseDescription().contains("Future_Working_Day_Date"))
            return getWeekDayFutureDate();
        if (restApiTestContext.getTestCaseDescription().contains("Future_Saturday_Date"))
            return getSaturdayFutureDate();
        if (restApiTestContext.getTestCaseDescription().contains("Future_Sunday_Date")) return getSundayFutureDate();

        if (value.contains("#")) {
            return value.replace("#", "");
        } else if (value.contains("F")) {
            Calendar futureDate = Calendar.getInstance();
            futureDate.add(Calendar.DATE, 1);
            return futureDate.toInstant().toString().substring(0, 10);
        } else {
            return String.valueOf(LocalDate.now());
        }
    }


    public String getWeekDayFutureDate() {
        String weekDayFutureDate = "";
        if (LocalDate.now().getDayOfWeek().getValue() != 5 & LocalDate.now().getDayOfWeek().getValue() != 6) {
            weekDayFutureDate = LocalDate.now().plusDays(1).toString();
        }
        if (LocalDate.now().getDayOfWeek().getValue() == 5) {
            weekDayFutureDate = LocalDate.now().plusDays(3).toString();
        }
        if (LocalDate.now().getDayOfWeek().getValue() == 6) {
            weekDayFutureDate = LocalDate.now().plusDays(2).toString();
        }
        return weekDayFutureDate;
    }

    public String getSaturdayFutureDate() {
        String saturdayFutureDate = LocalDate.now().plusDays(6 - LocalDate.now().getDayOfWeek().getValue()).toString();
        return saturdayFutureDate;
    }

    public String getSundayFutureDate() {
        String sundayFutureDate = LocalDate.now().plusDays(7 - LocalDate.now().getDayOfWeek().getValue()).toString();
        return sundayFutureDate;
    }


    private String populateJsonRequestPayloadFromCsvRecord(CSVRecord csvRecord, Set<String> allCSVColumnHeaders, String requestPayload) throws ParseException {
        Map<String, Object> map = DocumentFlattenerUtil.flattenJsonToMap(requestPayload);
        allCSVColumnHeaders.forEach(header -> {
            String value = csvRecord.get(header);

            if (header.equalsIgnoreCase("documents.contentStream") || header.equalsIgnoreCase("stream")) {
                value = encodeFile(value);
            }

            if (header.equalsIgnoreCase("fxTransactionDetail.settlementDate.valueDate")) {
                value = LocalDate.now().toString();
                if (restApiTestContext.getTestCaseDescription().equalsIgnoreCase("10_Value_date_before_today's_date"))
                    value = LocalDate.now().minusDays(1).toString();
            }


            if (value != null && !value.isEmpty()) {
                value = replaceRandomValues(header, value);
                map.replace(header, value);
            }
        });

        return DocumentFlattenerUtil.unFlattenMapToJson(map);
    }

    private String encodeFile(String filename) {
        byte[] input_file;
        try {
            input_file = Files.readAllBytes(Paths.get(System.getProperty("user.dir") +
                    "/src/test/resources/test_documents/file_upload_test_docs/"
                    + filename));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        return Base64.getEncoder().encodeToString(input_file);
    }

    private Map<String, String> getFormParams(Path rest_api_auth_form_params_properties_path) throws IOException {
        Map<String, String> accessTokenAuthFormParams = new HashMap<>();
        Properties properties = new Properties();
        properties.load(new FileInputStream(rest_api_auth_form_params_properties_path.toFile().getAbsolutePath()));
        properties.keySet().forEach(key -> {
            accessTokenAuthFormParams.put(key.toString(), properties.getProperty(key.toString()));
        });
        return accessTokenAuthFormParams;
    }

    private synchronized Map<String, String> getHttpHeaders(Path http_headers_path) throws IOException {
        Map<String, String> httpHeaders = new HashMap<>();
        Properties properties = new Properties();
        properties.load(new FileInputStream(http_headers_path.toFile().getAbsolutePath()));
        properties.keySet().forEach(key -> {
            httpHeaders.put(key.toString(), properties.getProperty(key.toString()));
        });
        if (httpHeaders.containsKey("Authorization")) {
            System.setProperty("Authorization", httpHeaders.get("Authorization"));
        }

        if (restApiTestContext.getTestCaseDescription().equalsIgnoreCase("3_Invalid_Channel_ID_Foreign_Exchange_Quote"))
            httpHeaders.replace("x-channel-id", "KKKK");

        if (restApiTestContext.getTestCaseDescription().equalsIgnoreCase("4_Invalid_Country_Code_Foreign_Exchange_Quote"))
            httpHeaders.replace("x-country-code", "XX");

        if (restApiTestContext.getTestCaseDescription().equalsIgnoreCase("2_empty_x-obo-token_header"))
            httpHeaders.replace("x-obo-token", "");

        if (restApiTestContext.getTestCaseDescription().equalsIgnoreCase("3_empty_authorization_header"))
            httpHeaders.replace("Authorization", "");

        if (restApiTestContext.getTestCaseDescription().equalsIgnoreCase("4_empty_client_id"))
            httpHeaders.replace("X-IBM-Client-Id", "");

        if (restApiTestContext.getTestCaseDescription().equalsIgnoreCase("5_empty_client_secret"))
            httpHeaders.replace("X-IBM-Client-Secret", "");

        if (restApiTestContext.getTestCaseDescription().equalsIgnoreCase("6_empty_x-channel-id_header"))
            httpHeaders.replace("x-channel-id", "");

        return httpHeaders;
    }

    private void populateJsonRequestPayloadFromOtherServicesPayload(List<Map<String, String>> dataRecords, int testDataSheetCsvRowIndex, Map<String, Object> flattenedRequestPaloadJsonMap) {
        if (dataRecords.get(testDataSheetCsvRowIndex).get("Test_Data_Source_Services") != null) {
            List<String> testDataSourceServiceIdList = Arrays.asList(dataRecords.get(testDataSheetCsvRowIndex).get("Test_Data_DataSource_Services").split(","));

            testDataSourceServiceIdList.forEach(testDataSourceServiceId -> {
                try {
                    List<CSVRecord> dataSourceAndRequestPayloadFieldMappings = CSVReader.getAllCSVRecords(Paths.get(restApiTestContext.getTestDataParentPath() + dataRecords.get(testDataSheetCsvRowIndex).get("TestData_DataSource_Service_FieldMappings_FilePath")));
                    Map<String, Object> requestDataMap = DocumentFlattenerUtil.flattenJsonToMap(((RestApiTestContext) restApiTestContext).getRestMessageContextMap().get(testDataSourceServiceId).getRestRequestMessageContext().getBody().toString());
                    Map<String, Object> responseDataMap = DocumentFlattenerUtil.flattenJsonToMap(((RestApiTestContext) restApiTestContext).getRestMessageContextMap().get(testDataSourceServiceId).getResponseBodyAsString());

                    dataSourceAndRequestPayloadFieldMappings.forEach(record -> {
                        String fieldName = record.get("Request_Response_FieldName");
                        Object value = responseDataMap.get(fieldName);
                        if (value == null) {
                            value = requestDataMap.get(fieldName);
                        }
                        if (value != null) {
                            flattenedRequestPaloadJsonMap.replace(record.get("Request_Input_FieldName"), value);
                        }
                    });
                } catch (IOException | ParseException e) {
                    throw new RuntimeException(e);
                }
            });

        }
    }

    private Object getValueFromDataSource(String testDataSourceServiceId, String dataSource_fieldName, String dataSource_type) {

        return null;
    }

    private void populateXmlRequestPayloadFromCsvRecord(CSVRecord csvRecord, Map<String, Object> flattenedRequestPaloadJsonMap) {
        csvRecord.toMap().keySet().forEach(csvColumnAndJsonFieldName -> {
            String value = csvRecord.get(csvColumnAndJsonFieldName);
            flattenedRequestPaloadJsonMap.replace(csvColumnAndJsonFieldName, value);
        });
    }

    private String getAuthorizationBearerCode(List<Map<String, String>> dataRecords, int testDataSheetCsvRowIndex, CSVRecord serviceConfigurationUriData) {
        if (dataRecords.get(testDataSheetCsvRowIndex).get("AccessToken_Service_Id").equalsIgnoreCase("ITT_API_Token")) {
            return System.getProperty("ITT_API_Token");

        }
        if ((dataRecords.get(testDataSheetCsvRowIndex).get("AccessToken_Service_Id") != null) && !(dataRecords.get(testDataSheetCsvRowIndex).get("AccessToken_Service_Id").trim().isEmpty())) {
//            String response =
            return ((RestApiTestContext) restApiTestContext).getRestMessageContextMap().get(dataRecords.get(testDataSheetCsvRowIndex).get("AccessToken_Service_Id")).getRestRequestMessageContext().getAccessToken();
        } else {
            return serviceConfigurationUriData.get("authorization_bearer_code");
        }
    }

    public void assertTestFailure(String serviceId) throws JSONException {
        Assertions.assertTrue(restApiTestContext.getAssertionFailures().toString().isEmpty(), restApiTestContext.getAssertionFailures().toString() + "\n\n ENDPOINT: " + requestEndpoint + "\n\n RESPONSE BODY: " + ((RestApiTestContext) restApiTestContext).getRestMessageContextMap().get(serviceId).getResponseBodyAsString() /* + "\n\n RESPONSE HEADERS: " + ((RestApiTestContext) restApiTestContext).getRestMessageContextMap().get(serviceId).getResponseHeaders() */);
        restApiTestContext.getScenarioStepTextForLogging().append("\n\n REQUEST ENDPOINT: " + requestEndpoint);
        restApiTestContext.getScenarioStepTextForLogging().append("\n\n REQUEST BODY: " + ((RestApiTestContext) restApiTestContext).getRestMessageContextMap().get(serviceId).getRestRequestMessageContext().getBody().toString());
        restApiTestContext.getScenarioStepTextForLogging().append("\n\n RESPONSE BODY: " + ((RestApiTestContext) restApiTestContext).getRestMessageContextMap().get(serviceId).getResponseBodyAsString());
        restApiTestContext.getScenarioStepTextForLogging().append("\n\n RESPONSE STATUS: " + ((RestApiTestContext) restApiTestContext).getRestMessageContextMap().get(serviceId).getResponseStatusCode());
        uniqueIdentifier = ((RestApiTestContext) restApiTestContext).getRestMessageContextMap().get(serviceId).getResponseBodyAsString();

    }

    public String retrievePaymentId() throws JSONException {
        JSONObject jsonObject = new JSONObject(uniqueIdentifier);
        return jsonObject.getString("uniqueIdentifier");
    }

    public void writePaymentIdToSystem(String serviceId) throws JSONException {
        JSONObject jsonObject = new JSONObject(((RestApiTestContext) restApiTestContext).getRestMessageContextMap().get(serviceId).getResponseBodyAsString());
        System.setProperty(Integer.valueOf(restApiTestContext.getTestDataSheetCsvRowIndex()).toString(), jsonObject.getString("uniqueIdentifier"));
    }

    public void tearDownScenario(Scenario scenario) throws IOException {
        String[] tagNames = scenario.getSourceTagNames().stream().toList().toArray(new String[0]);
        restApiTestContext.setTagName(Arrays.toString(tagNames).replace("@", ""));
        restApiTestContext.setResourceFileName(restApiTestContext.getTestDataSheetCsvRowIndex() + tagNames[tagNames.length - 1].replace("@", ""));

        if (restApiTestContext.getTestCaseDescription() == null || restApiTestContext.getTestCaseDescription().isEmpty()) {
            restApiTestContext.setTestCaseDescription(String.valueOf(restApiTestContext.getTestDataSheetCsvRowIndex()));
        }
        fileManager.writeRequestAndResponseToFile(restApiTestContext);
        fileManager.writeTestAssertionResultsToFile(restApiTestContext);
        fileManager.writeDatabaseResultsToFile(restApiTestContext);

        restApiTestContext.setTestCaseDescription("");
    }

    public void scenarioStepLogging(Scenario scenario) {
        if (!(restApiTestContext.getScenarioStepTextForLogging().toString().isEmpty())) {
            scenario.log("<textarea rows=\"20\" cols=\"40\" style=\"border:none;\">" + restApiTestContext.getScenarioStepTextForLogging().toString() + "</textarea>");
        }
    }

    private HttpMethodType getHttpMethodType(String http_method) {
        if ("GET".equalsIgnoreCase(http_method))
            return HttpMethodType.GET;
        else if ("POST".equalsIgnoreCase(http_method))
            return HttpMethodType.POST;
        else if ("UPDATE".equalsIgnoreCase(http_method))
            return HttpMethodType.UPDATE;
        else if ("DELETE".equalsIgnoreCase(http_method))
            return HttpMethodType.DELETE;
        return null;
    }

    public void dataFromShouldBeAsPerExpectedResultsFromBasedOnFieldMappingsCsvFileTestSourceCsvColumnNameAndControlSourceCsvColumnNameWithFieldsToExclude(String testSourceId, String actualValueSourceType, String controlSourceId, String expectedValueSourceType, String fieldMappingsCsvFilePath, String test_source_csv_column_name, String control_source_csv_column_name, String fieldsToExcludeCsvFilePath) {

    }

    public void validateBGANumber(String serviceId) throws JSONException {
        JSONObject jsonObjectRequest = new JSONObject(((RestApiTestContext) restApiTestContext).getRestMessageContextMap().get(serviceId).getRestRequestMessageContext().getBody().toString());
        JSONObject jsonObjectResponse = new JSONObject(((RestApiTestContext) restApiTestContext).getRestMessageContextMap().get(serviceId).getResponseBodyAsString());

        if (!jsonObjectRequest.getString("reasonCode").equalsIgnoreCase("00")) {
            String bgaNumber = jsonObjectResponse.getString("bankGeneratedAPN");
            String authorisedDealerCode = jsonObjectResponse.getString("authorisedDealerCode");
            String customerCodeNumber = jsonObjectRequest.getString("customerCodeNumber");
            String directionIndicator = jsonObjectRequest.getString("directionIndicator");
            LocalDate localDate = LocalDate.now();
            Assertions.assertEquals(bgaNumber.substring(0, 24), "BGA" + directionIndicator + authorisedDealerCode + customerCodeNumber + "-" + localDate.format(DateTimeFormatter.ofPattern("yyyyMMdd")), "BGA Number format is invalid <" + bgaNumber + ">");
        }
    }
}
