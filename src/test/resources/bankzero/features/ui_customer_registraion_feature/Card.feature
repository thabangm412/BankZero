@Card  @web_application

Feature: Card
  @UnLockCard
  Scenario Outline:UnLock Card <Test_Case_Description>

    Given I have test data from "card/Card_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "card/webdriver_element_list.csv"
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

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Card" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "CardSettings" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "UnLockCard" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I wait for "CardStatus" web page element to disappear
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              |ANDROID                          |

    And I click "UpdateButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                           |

    Then "On/OffStatus" should be displayed on "On/offMessage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 1                               |

  @LockCard
  Scenario Outline:Lock Card <Test_Case_Description>

    Given I have test data from "card/Card_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "card/webdriver_element_list.csv"
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

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Card" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "CardSettings" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "UnLockCard" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I wait for "CardStatus" web page element to disappear
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              |ANDROID                          |

    And I click "UpdateButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                           |

    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 2                               |

  @Allow_ATM_Withdrawals
  Scenario Outline: Allow ATM Withdrawals <Test_Case_Description>

    Given I have test data from "card/Card_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "card/webdriver_element_list.csv"
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

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Card" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "CardSettings" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "UnLockCard" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "alwaysOff/On" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And  I scroll using xpath containing "TypeOfATM"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "UpdateButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

#    Then "SuccessMessage" should be displayed on "ExpectedSuccessMessage" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    Then "TypeOfATM" should be displayed on "ATMOn/Off" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 3                               |

  @Disallow_ATM_Withdrawals
  Scenario Outline: Disallow ATM withdrawals And Allow one ATM cash withdrawal <Test_Case_Description>

    Given I have test data from "card/Card_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "card/webdriver_element_list.csv"
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

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Card" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "CardSettings" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

#    And I click "UnLockCard" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    And I click "alwaysOff/On" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And  I scroll using xpath containing "TypeOfATM"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "UpdateButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "TypeOfATM" should be displayed on "ATMOn/Off" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 4                              |
      | 5                               |

  @SetGlobalLimits
  Scenario Outline: Set the local/global withdrawal limit <Test_Case_Description>

    Given I have test data from "card/Card_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "card/webdriver_element_list.csv"
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

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Card" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "CardSettings" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

#    And I click "UnLockCard" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "alwaysOff/On" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

#    And  I scroll using xpath containing "TypeOfATM"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
    And I clear and write on "LocalDailyCash" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I clear and write on "GlobalDailyCash" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |


#    And I enter a value on "MaxPurchaseAmount" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                         |

#    And I click "addAuthoriser" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I enter a value on "staffName" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                         |
#
#    And I enter a value on "CellNo" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                         |
#
#    And I click "add" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    And I click "UpdateButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    Then "ExpectedLocalDailyCash" should be displayed on "LocalDaily" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ExpectedGlobalDailyCash" should be displayed on "GlobalDaily" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 6                               |


  @SetMaxLimits
  Scenario Outline: Set the online purchase limit <Test_Case_Description>

    Given I have test data from "card/Card_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "card/webdriver_element_list.csv"
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

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Card" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "CardSettings" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I clear and write on "MaxPurchaseAmount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "UpdateButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "ExpectedMaxPurchaseAmount" should be displayed on "OnlineTransaction" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 7                               |

  @ViewPin
  Scenario Outline: View Card & Pin <Test_Case_Description>

    Given I have test data from "card/Card_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "card/webdriver_element_list.csv"
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

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Card" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "viewCard&Pin" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "btnViewPin" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    Then PopUp text "YourPin" should be displayed on screen
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "cardTextFront" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "AccountNo" should be displayed on "backAccountNo" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "BranchCode" should be displayed on "branchAccNo" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "cardTextBack" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "cardExpireDate" should be displayed on "cardExpireDate" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "cardPanNo" should be displayed on "cardPanNo" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 8                              |



#  @Authorizer_Update
#  Scenario Outline: Card Settings add Authorize  <Test_Case_Description>
#
#    Given I have test data from "card/Card_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "card/webdriver_element_list.csv"
#      | Take_Screenshot |
#      | No              |
#
#    And I a "mobile" "APPLICATION" opened
#    And I enter a value on "LoginInPin0" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#
#    And I enter a value on "LoginInPin1" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "LoginInPin2" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "LoginInPin3" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                          |
#
#    And I enter a value on "LoginInPin4" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                         |
#
#    #    And I select "Profiles"
##      | Take_Screenshot | Element_Locator_Application_Type |
##      | No              | ANDROID                          |
#
#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Card" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "CardSettings" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "UnLockCard" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "alwaysOff/On" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And  I scroll using xpath containing "TypeOfATM"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I enter a value on "LocalDailyCash" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                         |
#    And I enter a value on "GlobalDailyCash" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                         |
#
#    And I enter a value on "MaxPurchaseAmount" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                         |
#    And I click "addAuthoriser" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I enter a value on "staffName" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                         |
#    And I enter a value on "CellNo" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                         |
#    And I click "add" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "UpdateButton" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "Finish" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    Examples:
#      | TestCaseId_and_TestDataRowIndex |
#      | 9                               |

#

#  @Cancel_Card
#  Scenario Outline: Cancel Card <Test_Case_Description>
#
#    Given I have test data from "card/Card_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "card/webdriver_element_list.csv"
#      | Take_Screenshot |
#      | No              |
#
#    And I a "mobile" "APPLICATION" opened
#
#    And I enter a value on "LoginInPin0" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#
#    And I enter a value on "LoginInPin1" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "LoginInPin2" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "LoginInPin3" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                          |
#
#    And I enter a value on "LoginInPin4" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                         |
#        #    And I select "Profiles"
##      | Take_Screenshot | Element_Locator_Application_Type |
##      | No              | ANDROID                          |
#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Card" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "CancelCard" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "YesBtn" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I clear and write on "MaxPurchaseAmount" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "UpdateButton" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    Then "ExpectedMaxPurchaseAmount" should be displayed on "OnlineTransaction" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Finish" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    Examples:
#      | TestCaseId_and_TestDataRowIndex |
#      | 9                               |
