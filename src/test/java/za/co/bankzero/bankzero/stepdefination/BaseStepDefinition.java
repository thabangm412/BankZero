package za.co.bankzero.bankzero.stepdefination;

import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import za.co.bankzero.bankzero.helper.BaseTestingStepDefinitionHelper;
import za.co.bankzero.bankzero.runner.TestingRunner;
import za.co.commandquality.cmdq_automation_testing_core.annotation.TestScope;


@TestScope
public class BaseStepDefinition {
    protected ThreadLocal<BaseTestingStepDefinitionHelper> uiTestingStepDefinitionHelperThreadLocal = new ThreadLocal<>();
    protected ThreadLocal<BaseTestingStepDefinitionHelper> mobileTestingStepDefinitionHelperThreadLocal = new ThreadLocal<>();
    protected final ThreadLocal<BaseTestingStepDefinitionHelper> restApiTestingStepDefinitionHelperThreadLocal = new ThreadLocal<>();

    @Autowired
    protected ApplicationContext context;
    @Value("${test.environment}")
    protected String testEnvironment;
    @Value("${product}")
    protected String productUnderTest;

    @PostConstruct
    public void setUpStaticValues() {
        TestingRunner.testEnvironment = testEnvironment;
        TestingRunner.productUnderTest = productUnderTest;
    }


}
