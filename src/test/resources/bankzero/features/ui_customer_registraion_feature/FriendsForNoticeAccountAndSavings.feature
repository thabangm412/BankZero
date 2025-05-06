@Friend  @web_application

Feature:Adding a friend and deleting friend

  @User_Add_Registered_Friend
  Scenario Outline: <Test_Case_Description>

    Given I have test data from "friends/Friend_For_Savings_And_Notice_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "friends/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I enter a value on "LoginInPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "SavingScriptDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "friends" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "plusSign" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "friendName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "addButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "confirmButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "Status" should be displayed on "PassedMassage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "FinishBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 1                               |Add friend For Savings |

  @User_Unfriend_friend
  Scenario Outline: <Test_Case_Description>

    Given I have test data from "friends/Friend_For_Savings_And_Notice_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "friends/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I enter a value on "LoginInPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "SavingScriptDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "friends" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "FriendProfile" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "DeleteFriend" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "YesDelete" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 2                              |Delete friend For Savings |

  @Add_A_Friend_For_7_Days_Notice
  Scenario Outline: <Test_Case_Description>

    Given I have test data from "friends/Friend_For_Savings_And_Notice_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "friends/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I enter a value on "LoginInPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots7" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "friends" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "plusSign" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "friendName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "addButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "confirmButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "Status" should be displayed on "PassedMassage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "FinishBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 3                               | Add a Friend For 7 Days Notice |

  @Add_Delete_Friend_For_7_Days_Notice
  Scenario Outline:  <Test_Case_Description>

    Given I have test data from "friends/Friend_For_Savings_And_Notice_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "friends/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I enter a value on "LoginInPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots7" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "friends" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "FriendProfile" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "DeleteFriend" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "YesDelete" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 4                               |Delete Friend For 7 Days Notice |

  @Add_A_Friend_For_32_Days_Notice
  Scenario Outline: <Test_Case_Description>

    Given I have test data from "friends/Friend_For_Savings_And_Notice_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "friends/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I enter a value on "LoginInPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |


    And I enter a value on "LoginInPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots32" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "friends" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "plusSign" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "friendName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "addButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "confirmButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "Status" should be displayed on "PassedMassage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "FinishBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 5                              | Add a Friend For 32 Days Notice  |

  @Add_Delete_Friend_For_32_Days_Notice
  Scenario Outline:  <Test_Case_Description>

    Given I have test data from "friends/Friend_For_Savings_And_Notice_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "friends/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I enter a value on "LoginInPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots32" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "friends" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "FriendProfile" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "DeleteFriend" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "YesDelete" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 6                              | Delete Friend For 32 Days Notice |


  @Add_A_Friend_For_45_Days_Notice
  Scenario Outline: <Test_Case_Description>

    Given I have test data from "friends/Friend_For_Savings_And_Notice_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "friends/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I enter a value on "LoginInPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots45" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "friends" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "plusSign" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "friendName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "addButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "confirmButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "Status" should be displayed on "PassedMassage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "FinishBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 7                              | Add a Friend For 45 Days Notice |


  @Add_Delete_Friend_For_45_Days_Notice
  Scenario Outline:  <Test_Case_Description>

    Given I have test data from "friends/Friend_For_Savings_And_Notice_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "friends/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I enter a value on "LoginInPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots45" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "friends" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "FriendProfile" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "DeleteFriend" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "YesDelete" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 8                              |Delete Friend For 45 Days Notice|



