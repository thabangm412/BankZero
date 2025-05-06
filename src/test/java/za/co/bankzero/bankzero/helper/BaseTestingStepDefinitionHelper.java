package za.co.bankzero.bankzero.helper;

import com.github.javafaker.Faker;
import org.junit.jupiter.api.Assertions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import za.co.commandquality.cmdq_automation_testing_core.model.context.TestContext;
import za.co.commandquality.cmdq_automation_testing_core.service.*;
import za.co.commandquality.cmdq_automation_testing_core.util.DatabaseUtil;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

public abstract class BaseTestingStepDefinitionHelper {
    @Autowired
    protected WebServiceClient webServiceClient;

    @Autowired
    protected WebDriverService webDriverService;

    //    @Autowired
    protected DatabaseService databaseService;

    @Autowired
    protected Verifier verifier;

    @Autowired
    protected FileManager fileManager;

    @Value("${rest.api.auth.username}")
    protected String username;

    @Value("{rest.api.auth.password}")
    protected String password;

    Faker faker = new Faker();

    protected final ThreadLocal<WebDriverService> threadLocalWebDriver = new ThreadLocal<>();
    public ThreadLocal<TestContext> testContextThreadLocal = new ThreadLocal<>();


    public void iQueryDatabaseForDataWithColumnNamesDefinedInCsvFileCsvColumnNameAndQueryStatementFromQueryStatementColumnNameQueryStatementSearchCriteriaColumnNameValue(String dbName, String resultset_id, String dbColumnNamesFilePath, String dbColumnNamesCsvColumn, String filePathWithQueryStatements, String queryStatementColumnName, String searchCriteriaColumnName, String searchCriteriaColumnValue, TestContext testContext) throws IOException {
        Path dbColumnNamesCsvFilePath = Paths.get(testContext.getTestDataParentPath() + dbColumnNamesFilePath);
        Path queryStatementsCsvFilePath = Paths.get(testContext.getTestDataParentPath() + filePathWithQueryStatements);
        String queryStatement = DatabaseUtil.createQueryStatement(queryStatementsCsvFilePath, queryStatementColumnName, searchCriteriaColumnName, searchCriteriaColumnValue, DatabaseUtil.getSelectionListSet(dbColumnNamesCsvFilePath, dbColumnNamesCsvColumn));
        testContext.getDatabaseQueryStatements().append(String.format("%s Query Statement: %s\n\n", resultset_id, queryStatement));
        testContext.getDatabaseResultsSetMap().put(resultset_id, databaseService.query(dbName, queryStatement));

        if (testContext.getDatabaseResultsSetMap().get(resultset_id) != null || !testContext.getDatabaseResultsSetMap().get(resultset_id).first()) {
            Assertions.fail("Did not find any records based on the query statement. \n"
                    + "Query Statement: <" + queryStatement + "> \n");
        }
    }

}
