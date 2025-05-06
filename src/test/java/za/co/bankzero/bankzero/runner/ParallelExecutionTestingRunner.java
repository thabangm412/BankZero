package za.co.bankzero.bankzero.runner;

import org.testng.annotations.DataProvider;
import za.co.commandquality.cmdq_automation_testing_core.annotation.TestScope;

@TestScope
public class ParallelExecutionTestingRunner extends TestingRunner {
    @Override
    @DataProvider(parallel = true)
    public Object[][] scenarios() {
        return super.scenarios();
    }
}
