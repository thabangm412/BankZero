package za.co.bankzero.bankzero.runner;

import com.aventstack.extentreports.service.ExtentService;
import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
import net.lingala.zip4j.exception.ZipException;
import org.apache.commons.io.FileUtils;
import org.springframework.util.FileSystemUtils;
import org.testng.annotations.AfterSuite;
import org.testng.annotations.BeforeSuite;
import org.testng.xml.XmlTest;
import za.co.commandquality.cmdq_automation_testing_core.util.AllureReportGenerator;
import za.co.commandquality.cmdq_automation_testing_core.util.ZipFileUtil;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Map;
import java.util.Objects;
import java.util.Properties;

@CucumberOptions(features = "classpath:google_website/features",
        glue = "za.co.bankzero.bankzero.stepdefination",
        monochrome = true,
        plugin = {
                "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:",
                "io.qameta.allure.cucumber7jvm.AllureCucumber7Jvm",
                "rerun:target/failed_scenarios.txt"
        })
public class TestingRunner extends AbstractTestNGCucumberTests {

    private String testKey;
    private String executionKey;
    private String testPlanKey;
    private static Properties allureReportProperties;
    public static String testEnvironment;
    public static String productUnderTest;
    @BeforeSuite
    public void beforeSuite(XmlTest suite) throws IOException {
        Map<String, String> parameters = suite.getAllParameters();
        this.executionKey = parameters.get("executionKey");
        this.testKey = parameters.get("testKey");
        this.testPlanKey = parameters.get("testPlanKey");

        allureReportProperties = new Properties();
        allureReportProperties.load(Files.newInputStream(Paths.get("src/test/resources/allure.properties")));
        String dir = System.getProperty("user.dir");
        String allureResultsFolder = dir + File.separator + allureReportProperties.getProperty("allure.results.directory");
        boolean result = FileSystemUtils.deleteRecursively((Paths.get(allureResultsFolder).toFile())); // delete previous test suite execution results
        Path allureReportCategoriesFilePath = Paths.get("src/test/resources/categories.json");
        if (allureReportCategoriesFilePath.toFile().exists() && Objects.nonNull(allureResultsFolder)) {
            FileUtils.copyFileToDirectory(allureReportCategoriesFilePath.toFile(), Paths.get(allureResultsFolder).toFile()); // Copy the categories file to the main Framework Execution Report Folder}

        }
    }

    @AfterSuite
    public void setAdditionalReportInfo() throws IOException {
        setupSystemInfoForExtent();
        Path reportFolderPath = Paths.get(ExtentService.getScreenshotFolderName()).getParent();
        String reportFolderParent = reportFolderPath.getParent().toString();
        String newReportFolderName = TestingRunner.productUnderTest.toUpperCase() + "_" + TestingRunner.testEnvironment.toUpperCase() + "_" + reportFolderPath.toFile().getName();
        String reportFolderZipFile = newReportFolderName + ".zip";
        Path reportFolderZipFilePath = Paths.get(reportFolderPath.toString() + File.separator + reportFolderZipFile);
        Path reportFolderNewPath = Paths.get(reportFolderParent + File.separator + newReportFolderName);
        //boolean results = AllureReportGenerator.generateAllureHtmlReport(reportFolderPath, allureReportProperties);
        ZipFileUtil.zipFolderWithZip4J(reportFolderPath, reportFolderZipFilePath);
        reportFolderPath.toFile().renameTo(reportFolderZipFilePath.toFile());
        reportFolderPath.toFile().renameTo(reportFolderNewPath.toFile());
        Path extent_report_path = Paths.get(reportFolderPath + File.separator + "powercurve_test_execution_extent_report.html");
        extent_report_path.toFile().delete();
        Files.deleteIfExists(extent_report_path);
        boolean result = FileSystemUtils.deleteRecursively((reportFolderPath.toFile())); // delete previous test suite execution report
    }

    public static void setupSystemInfoForExtent() {
        ExtentService.getInstance().setSystemInfo("user.name", System.getProperty("user.name"));
        ExtentService.getInstance().setSystemInfo("os.name", System.getProperty("os.name"));
        ExtentService.getInstance().setSystemInfo("os.arch", System.getProperty("os.arch"));
        ExtentService.getInstance().setSystemInfo("os.version", System.getProperty("os.version"));
        ExtentService.getInstance().flush();
    }


//    @AfterSuite
//    public void zipreportFolder() throws ZipException {
//        XrayReport xrayReport=new XrayReport(testKey,executionKey,testPlanKey);
//        ExtentService.getInstance().flush();
//        xrayReport.generateXrayReport(ExtentService.getInstance());
//        Path reportParentPath = Paths.get(ExtentService.getScreenshotFolderName()).getParent();
//        ZipFileUtil.zipFolderWithZip4J(reportParentPath, Paths.get(FileManager.REPORT_FOLDER_ZIP_FILE_TARGET_PATH));
//    }


}
