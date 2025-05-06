package za.co.bankzero.bankzero.runner.noticeaccountmenuactionforfriends;

import io.cucumber.testng.CucumberOptions;
import za.co.bankzero.bankzero.runner.SingleExecutionTestingRunner;

@CucumberOptions(features =
        "classpath:bankzero/features/ui_customer_registraion_feature/FriendsForNoticeAccountAndSavings.feature"
        ,tags =
        "@AddFriend"
)
public class NoticeAccFriends extends SingleExecutionTestingRunner {

}
