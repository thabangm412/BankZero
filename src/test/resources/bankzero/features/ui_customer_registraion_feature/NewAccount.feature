@NewAccount  @web_application

Feature: New Account
  @New_Account
  Scenario Outline: Add New Account <SelectAccountType>

    Given I have test data from "newaccount/NewAccount_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "newaccount/webdriver_element_list.csv"
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
      | Yes              | ANDROID                         |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "PlusSign" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "newAccount" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "selectFromAccountDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "selectFromAccount"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "accountTypeDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "SelectAccountType"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "addBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "accountNameTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "attachClip" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "searchBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "searchTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "selectImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "goalAmountTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I clear and enter a value on "AmountTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "nextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "iAgreeCheckBox" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "confirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "NewAccountStatus" should be displayed on "Status" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex  |Test_Case_Description|
      | 1                                |Account type =Savings: Goal Amount = 10000: Amount Transferred=800|
      | 2                                |Account type =7 Day Notice: Goal Amount = 1500: Amount Transferred=250|
      | 3                                |Account type =32 Day Notice : Goal Amount = 1000: Amount Transferred=100|
      | 4                                |Account type =45 Day Notice: Goal Amount = 5000: Amount Transferred=300 |



  @NewAccountAddCheckDontWantCard
  Scenario Outline: New Account Add Check <Test_Case_Description>.

    Given I have test data from "newaccount/NewCheckAccount_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "newaccount/webdriver_element_list.csv"
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

    And I click "PlusSign" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "newAccount" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "selectFromAccountDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "selectFromAccount"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "accountTypeDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "SelectAccountType"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "addBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "accountNameTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "attachClip" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "searchBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "searchTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "selectImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I hide keyboard
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "selectCheckAccount" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "FromCheckAccountName"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I clear and enter a value on "AmountTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "nextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "cardOptionsDropDown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "CardOptions"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "nextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "confirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "completionMessage" should be displayed on "ThankYouMessage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex | Test_Case_Description |
      | 1                               | Don't want card |

  @NewAccountAddCheckPickupAtRetail
  Scenario Outline: New Account Add Check <Test_Case_Description>.

    Given I have test data from "newaccount/NewCheckAccount_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "newaccount/webdriver_element_list.csv"
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

    And I click "PlusSign" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "newAccount" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "selectFromAccountDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "selectFromAccount"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "accountTypeDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "SelectAccountType"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "addBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "accountNameTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "attachClip" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "searchBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "searchTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "selectImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I hide keyboard
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "selectCheckAccount" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "FromCheckAccountName"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I clear and enter a value on "AmountTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "nextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "cardOptionsDropDown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "CardOptions"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

             And I wait

    When I scroll using xpath containing "RetailersLocation"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "card1stline" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

         #And I hide keyboard
    And I enter a value on "card2ndline" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "nextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardConfirmPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardConfirmPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardConfirmPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardConfirmPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardConfirmPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "nextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "confirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "completionMessage" should be displayed on "ThankYouMessage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

#    Then "NewAccountStatus" should be displayed on "Status" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
## I need to verify  that the new account took exactly the charge amount
    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 2                               |Pick up at retailer (R59)|

  @NewAccountAddCheckToDiffAccount
  Scenario Outline: New Account Add Check <Test_Case_Description>.

    Given I have test data from "newaccount/NewCheckAccount_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "newaccount/webdriver_element_list.csv"
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
      | Yes             | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "PlusSign" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "newAccount" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "selectFromAccountDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "selectFromAccount"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "accountTypeDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "SelectAccountType"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "addBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "accountNameTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "attachClip" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "searchBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "searchTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "selectImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I hide keyboard
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "selectCheckAccount" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "FromCheckAccountName"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I clear and enter a value on "AmountTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "nextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "cardOptionsDropDown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "CardOptions"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "card1stline" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    #And I hide keyboard
    And I enter a value on "card2ndline" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "nextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "AddressType" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "AddressType"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "EstateName2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "StreetAdress2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Suburb/city2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    #And I hide keyboard
    And I enter a value on "cardPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardConfirmPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardConfirmPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardConfirmPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardConfirmPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardConfirmPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "nextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "confirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "completionMessage" should be displayed on "ThankYouMessage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

#    Then "NewAccountStatus" should be displayed on "Status" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 3                               |Courier to a different address (R99 - R129)|


  @NewAccountAddCheckToSameAddress
  Scenario Outline: New Account Add check <Test_Case_Description>.

    Given I have test data from "newaccount/NewCheckAccount_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "newaccount/webdriver_element_list.csv"
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
      | Yes             | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "PlusSign" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "newAccount" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "selectFromAccountDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "selectFromAccount"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "accountTypeDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "SelectAccountType"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "addBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "accountNameTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "attachClip" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "searchBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "searchTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "selectImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I hide keyboard
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "selectCheckAccount" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "FromCheckAccountName"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I clear and enter a value on "AmountTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "nextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "cardOptionsDropDown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "CardOptions"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    #And I wait

    And I enter a value on "cardNameLine1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardNameLine2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "nextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "AddressType" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "AddressType"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "EstateName2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "StreetAdress2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Suburb/city2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    #And I hide keyboard
    And I enter a value on "cardPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardConfirmPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardConfirmPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardConfirmPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardConfirmPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardConfirmPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "nextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "confirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "completionMessage" should be displayed on "ThankYouMessage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

#    Then "NewAccountStatus" should be displayed on "Status" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 4                               |Courier to residential address (R99 - R129)|

