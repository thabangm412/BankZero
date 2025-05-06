@settingss  @web_application

Feature: Settings for saving account

  @Settings_for_saving_account
  Scenario Outline: User <Test_Case_Description>

    Given I have test data from "settings/settings_For_Savings_And_Notice Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "settings/webdriver_element_list.csv"
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
      | Yes              | ANDROID                         |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Settings" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "pic" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ClickSearch" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "SearchForImage" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    Then "AssertImage" should be displayed on "ImageSearchFolder" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ProfileImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ValidateTextImage" should be displayed on "ValidateTextImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ValidateTextImage" should be displayed on "ValidateTextImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ValidateTextImage" should be displayed on "ValidateTextImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ValidateTextImage" should be displayed on "ValidateTextImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "NextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ConfirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "Status" should be displayed on "UpdateSuccessMessage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "finishButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 1                               |Settings for savings account|


  @Settings_for_saving_account
  Scenario Outline: User <Test_Case_Description>

    Given I have test data from "settings/settings_For_Savings_And_Notice Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "settings/webdriver_element_list.csv"
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
      | Yes              | ANDROID                         |

        And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Settings" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I clear and write on "EditAccountName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "NextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ConfirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "Status" should be displayed on "UpdateSuccessMessage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "finishButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 2                               |Settings for savings account|


  @Settings_for_7_Days_Notice_account
  Scenario Outline: User <Test_Case_Description>

    Given I have test data from "settings/settings_For_Savings_And_Notice Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "settings/webdriver_element_list.csv"
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
      | Yes              | ANDROID                         |

        And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Settings" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I clear and write on "EditAccountName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "NextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ConfirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "Status" should be displayed on "UpdateSuccessMessage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "finishButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 3                               |Settings for 7 Days Notice account|

  @Settings_for_7_Days_Notice_account
  Scenario Outline: User <Test_Case_Description>

    Given I have test data from "settings/settings_For_Savings_And_Notice Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "settings/webdriver_element_list.csv"
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
      | Yes              | ANDROID                         |

        And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Settings" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "pic" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ClickSearch" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "SearchForImage" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    Then "AssertImage" should be displayed on "ImageSearchFolder" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ProfileImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ValidateTextImage" should be displayed on "ValidateTextImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ValidateTextImage" should be displayed on "ValidateTextImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ValidateTextImage" should be displayed on "ValidateTextImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ValidateTextImage" should be displayed on "ValidateTextImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "NextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ConfirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "Status" should be displayed on "UpdateSuccessMessage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "finishButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 4                               |Settings for 7 Days Notice account|


  @Settings_for_32_Days_Notice_account
  Scenario Outline: User <Test_Case_Description>

    Given I have test data from "settings/settings_For_Savings_And_Notice Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "settings/webdriver_element_list.csv"
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
      | Yes              | ANDROID                         |

        And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Settings" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I clear and write on "EditAccountName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "NextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ConfirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "Status" should be displayed on "UpdateSuccessMessage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "finishButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 5                              |Settings for 32 Days Notice account|


  @Settings_for_32_Days_Notice_account
  Scenario Outline: User <Test_Case_Description>

    Given I have test data from "settings/settings_For_Savings_And_Notice Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "settings/webdriver_element_list.csv"
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
      | Yes              | ANDROID                         |

        And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Settings" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "pic" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ClickSearch" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "SearchForImage" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    Then "AssertImage" should be displayed on "ImageSearchFolder" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ProfileImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ValidateTextImage" should be displayed on "ValidateTextImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ValidateTextImage" should be displayed on "ValidateTextImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ValidateTextImage" should be displayed on "ValidateTextImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ValidateTextImage" should be displayed on "ValidateTextImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "NextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ConfirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "Status" should be displayed on "UpdateSuccessMessage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "finishButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 6                              |Settings for 32 Days Notice account|

  @Settings_for_45_Days_Notice_account
  Scenario Outline: User <Test_Case_Description>

    Given I have test data from "settings/settings_For_Savings_And_Notice Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "settings/webdriver_element_list.csv"
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
      | Yes              | ANDROID                         |

        And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Settings" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "pic" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ClickSearch" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "SearchForImage" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    Then "AssertImage" should be displayed on "ImageSearchFolder" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ProfileImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ValidateTextImage" should be displayed on "ValidateTextImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ValidateTextImage" should be displayed on "ValidateTextImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ValidateTextImage" should be displayed on "ValidateTextImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ValidateTextImage" should be displayed on "ValidateTextImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "NextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ConfirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "Status" should be displayed on "UpdateSuccessMessage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "finishButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 7                             |Settings for 45 Days Notice account|

  @Settings_for_45_Days_Notice_account
  Scenario Outline: User <Test_Case_Description>

    Given I have test data from "settings/settings_For_Savings_And_Notice Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "settings/webdriver_element_list.csv"
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
      | Yes              | ANDROID                         |

        And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Settings" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I clear and write on "EditAccountName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "NextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ConfirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "Status" should be displayed on "UpdateSuccessMessage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "finishButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 8                              |Settings for 45 Days Notice account|