package za.co.bankzero.bankzero.xray;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.model.Test;
import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;
import org.yaml.snakeyaml.Yaml;
import za.co.bankzero.bankzero.aws_s3.UploadToS3;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.stream.Stream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class XrayReport {

    private final String fileSeparator = System.getProperty("file.separator");
    private final Logger LOG= LoggerFactory.getLogger(XrayReport.class);
    private final UploadToS3 uploadToS3= new UploadToS3();

    private final String testKey;
    private final String executionKey;
    private final String testPlanKey;

    public XrayReport(){
        Map<String,String>csvRow= setXrayData();
        testKey=csvRow.get("testKey");
        executionKey=csvRow.get("executionKey");
        testPlanKey=csvRow.get("testPlanKey");

    }
    public XrayReport(String testKey,String executionKey, String testPlanKey){
        this.executionKey=executionKey;
        this.testKey=testKey;
        this.testPlanKey=testPlanKey;

    }
    public void generateXrayReport(ExtentReports extentReports){

//        if(!"Yes".equalsIgnoreCase(getProperty("postToXray"))) {
//            LOG.info("Xray has been turned off {}",getProperty("postToXray"));
//            return;  //skip xray if not required for scenario
//        }

    try{
        String testPlanKey = this.testPlanKey!=null?this.testPlanKey: getProperty("testPlanKey");
        String testExecutionKey = this.executionKey!=null?this.executionKey:getProperty("testExecutionKey");
        String path = getReportPath();
        File file = new File(path+fileSeparator+"testing-report.html");
        //String base64=zipFolder(path);
        String zipPath=path.substring(0,path.lastIndexOf("Reports")+7)+fileSeparator+"reportOutput.zip";
        Path zipFilePath = Path.of(zipPath);
        zipFileWithZipOutputStream(Path.of(path), zipFilePath);
        byte[] fileBytes = Files.readAllBytes(file.toPath());

        // Encode the byte array to a Base64 string
        String base64String = Base64.getEncoder().encodeToString(fileBytes);
        //LOG.info("Base64 zip string {}",base64String);

        List<XrayTest> tests = new ArrayList<>();
        Evidence evidence=Evidence.builder()
                .data(base64String)
                .filename(file.getName())
                .contentType("text/html")
                .build();
        Step step=Step.builder()
                .actualResult("PASSED")
                .comment("Passed with 200")
                .status("PASSED")
                .evidences(Collections.singletonList(evidence))
                .build();
        for (Test test : extentReports.getReport().getTestList()) {
            XrayTest xrayTest = XrayTest.builder()
                    .start(format(test.getStartTime()))
                    .finish(format(test.getEndTime()))
                    .comment(test.getDescription() == null ?  "Comment is null" : test.getDescription())
                    .status(test.getStatus().getName().toUpperCase() + "ED")
                    .testKey(this.testKey!=null?this.testKey: getProperty("testKey"))
                    .steps(Collections.singletonList(step))
                    .build();
            tests.add(xrayTest);
        }
        Info info = Info.builder()
                .finishDate(format(extentReports.getReport().getEndTime()))
                .startDate(format(extentReports.getReport().getStartTime()))
                .testPlanKey(testPlanKey)
                .revision("1.0.42134")
                .build();
        TestExecution testExecutionDTO = TestExecution.builder()
                .testExecutionKey(testExecutionKey)
                .tests(tests)
                .info(info)
                .build();
        sendXrayReport(testExecutionDTO,new File(zipPath));
        uploadAttachmentToIssue(zipPath);
        LOG.info("Testing out autowire, {}",getProperty("authLink"));
    }catch (Exception e){
        LOG.error("Something went wrong",e);

    }



}
    private String format(Date date){
        try {
            Instant instant=date.toInstant();
            ZonedDateTime zonedDateTime=instant.atZone(ZoneId.systemDefault());
            return zonedDateTime.format(DateTimeFormatter.ISO_OFFSET_DATE_TIME);
        }catch (Exception e){
            LOG.error("Something went wrong",e);

        }
        return null;
    }
    public  String getReportPath() {
        String currentFilePath = XrayReport.class.getProtectionDomain().getCodeSource().getLocation().getPath();
        currentFilePath= currentFilePath.replace("%20"," ").replace(fileSeparator+"target","");
        File currentFile = new File(currentFilePath);
        String projectFolderPath = currentFile.getParentFile().getAbsolutePath();
        LocalDateTime date = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH-mm");
        String formattedDate = date.format(formatter);
        String reportFolder=fileSeparator+"SBG_ "+ formattedDate+fileSeparator+"testing-report.html";
        String path= projectFolderPath+fileSeparator+"Automation Test Execution Reports"+reportFolder;
        path=path.replace("target"+fileSeparator,"");
        File parentFolder = new File(path.substring(0,path.indexOf("SBG")));
        if (parentFolder.exists() && parentFolder.isDirectory()) {
            File[] subfolders = parentFolder.listFiles(File::isDirectory);

            if (subfolders != null && subfolders.length > 0) {
                Arrays.sort(subfolders, Comparator.comparingLong(File::lastModified));

                File lastSubfolder = subfolders[subfolders.length - 1];
                System.out.println("Last Subfolder: " + lastSubfolder.getAbsolutePath());
              return  lastSubfolder.getAbsolutePath();
            } else {
                System.out.println("No subfolders found.");
            }
        } else {
            System.out.println("Parent folder does not exist or is not a directory.");
        }
        return path.replace("%20"," ").replace(fileSeparator+"target","");
    }

    public  void sendXrayReport(TestExecution testExecutionDTO, File file){

        RestTemplate template=new RestTemplate();
        try {
            String clientSecret=getProperty("clientSecret");
            String clientId=getProperty("clientId");
            String authLink=getProperty("authLink");
            String executionLink=getProperty("executionLink");
            TokenDTO tokenDTO =TokenDTO.builder()
                    .client_id(clientId)
                    .client_secret(clientSecret)
                    .build();
            HttpHeaders headers=new HttpHeaders();
            headers.set("Accept","*/*");
            headers.set("Content-Type","application/json");
            HttpEntity<TokenDTO> http=new HttpEntity<>(tokenDTO,headers);
            ResponseEntity<String> response =template.exchange(authLink, HttpMethod.POST,http,String.class);
            headers.set("Accept","*/*");
            headers.set("Content-Type","application/json");
            headers.set("Authorization","Bearer "+ response.getBody().substring(1,response.getBody().length()-1));



            HttpEntity<TestExecution>httpEntity=new HttpEntity<>(testExecutionDTO,headers);
//           TODO s3 Here
//            uploadToS3.putS3Object(file.getName(), file.getPath());
            ResponseEntity responseEntity= template.exchange(executionLink,HttpMethod.POST,httpEntity,Object.class);


            LOG.info("XRAY Report submission ,{}",responseEntity);
            //api call
        }catch (Exception e){
            LOG.error("Something went wrong",e);
        }

    }

    public String getProperty(String name) {
        Yaml yaml = new Yaml();
        ApplicationContext context = new AnnotationConfigApplicationContext(EnvironmentConfig.class);

        // Retrieve the Environment bean
        Environment environment = context.getBean(Environment.class);
        LOG.info("Getting the environment active profile {}",  environment.getActiveProfiles());
//        LOG.info("Testing out variables {}",environment.getProperty(name));

//        String activeProfiles="-"+environment.getActiveProfiles()[0];
//        LOG.info("Testing out active profile {}",activeProfiles);
        try (InputStream inputStream = getClass().getResourceAsStream("/application-sit.yml")) {
            Map<String, Object> yamlData = yaml.load(inputStream);

            return String.valueOf(yamlData.get(name));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    private void uploadAttachmentToIssue(String filePath) throws UnirestException {
        // Set your Jira instance URL, access key, and issue key
        String baseUrl = getProperty("jiraUrl");
        String issueKey = testKey!=null?testKey:getProperty("issueKey"); // Replace with your issue key


        // Specify the file to attach
        File fileToAttach = new File(filePath);
         HttpResponse<JsonNode> httpResponse= Unirest.post(baseUrl+issueKey+"/attachments")
                .basicAuth(getProperty("username"), getProperty("password"))
                .header("Accept", "application/json")
                .header("X-Atlassian-Token", "no-check")
                .field("file", fileToAttach)
                .asJson();
         LOG.info("Attachment done to issue "+testKey+"{}",httpResponse.getBody());

    }

    public void zipFileWithZipOutputStream(Path sourcePath, Path zipFilePath) {
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(Files.newOutputStream(zipFilePath));

            try {
                Stream<Path> paths = Files.walk(sourcePath);

                try {
                    paths.filter((path) -> {
                        return !Files.isDirectory(path, new LinkOption[0]);
                    }).forEach((path) -> {
                        ZipEntry zipEntry = new ZipEntry(sourcePath.relativize(path).toString());

                        try {
                            zipOutputStream.putNextEntry(zipEntry);
                            Files.copy(path, zipOutputStream);
                            zipOutputStream.closeEntry();
                        } catch (IOException var5) {
                            throw new RuntimeException(var5);
                        }
                    });
                } catch (Throwable var9) {
                    if (paths != null) {
                        try {
                            paths.close();
                        } catch (Throwable var8) {
                            var9.addSuppressed(var8);
                        }
                    }

                    throw var9;
                }

                if (paths != null) {
                    paths.close();
                }
            } catch (Throwable var10) {
                try {
                    zipOutputStream.close();
                } catch (Throwable var7) {
                    var10.addSuppressed(var7);
                }

                throw var10;
            }

            zipOutputStream.close();
        } catch (IOException var11) {
            throw new RuntimeException(var11);
        }
    }
    public   Map<String,String> setXrayData()  {

        try {
            // Specify the path to your CSV file
            String csvFilePath = System.getProperty("csvPath");
            String rowIndex=System.getProperty("rowIndex");

            // Create a reader for the CSV file

            // Create a reader for the CSV file
            CSVReader csvReader = new CSVReaderBuilder(new FileReader(csvFilePath)).build();

            List<Map<String, String>> records = new ArrayList<>();
            String[] headers = csvReader.readNext(); // Read the header row

            if (headers != null) {
                String[] nextLine;
                while ((nextLine = csvReader.readNext()) != null) {
                    Map<String, String> record = new HashMap<>();
                    for (int i = 0; i < headers.length && i < nextLine.length; i++) {
                        record.put(headers[i], nextLine[i]);
                    }
                    records.add(record);
                }
            }


            // Close the CSV reader
            csvReader.close();
            return records.get(getRow(rowIndex)-1);

        }catch (Exception e){
            e.printStackTrace();
            return new HashMap<>();
        }


    }

    private int getRow(String rowIndex){
        try {
            return rowIndex == null ? 0 : Integer.parseInt(rowIndex);
        }catch (Exception e){
            return 0;
        }
    }


}