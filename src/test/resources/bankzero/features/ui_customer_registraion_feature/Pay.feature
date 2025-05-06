@Pay  @web_application

Feature: Bank zero make payment

  @Add_Recipient_With_Email_CellNumber_And_Pay_Send_POP
  Scenario Outline:<TestCaseId_and_TestDataRowIndex> <Test_Case_Description>

    Given I have test data from "pay/BankZeroAdd_Recipient_And_Pay_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

#    And I copy "filePath" file to the phone
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#

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

    And I click "Amount Tab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And Read the current Balance of element "CurrentBalance" and subtract "Amount""extraCharge" from it
      | Take_Screenshot | Element_Locator_Application_Type |
      |  Yes              | ANDROID                        |

    And I click "BackArrow" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Pay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "RecipientName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "SelectGroup" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Group"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectBank" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Bank"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "AccountNumber" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cellno" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Pay2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Amount Tab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "RecipientName"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Download icon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

#    And "push notification message" should be displayed on push notification with payment amount "Amount",recipient "RecipientName",reference "Reference" and sender "Profiles"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 1                               | Adding new recipient=Glen Mankabindi with BZ account number =82000071580 ;reference = Manqoba; ammount = 50;Group = Beauty and send POP with cell number                    |
      | 2                               | Adding new recipient=Manqoba with BZ account number = 82000071610;reference = Glen; ammount = 45;Group = Business and send POP without cell number                    |
#      | 3                               |                     |


  @Add_Recipient_With_Email_CellNumber_And_Pay_Send_POP_With_Attachment
  Scenario Outline:<TestCaseId_and_TestDataRowIndex> <Test_Case_Description>

    Given I have test data from "pay/BankZeroAdd_Recipient_And_Pay_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I copy "filePath" file to the phone
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

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

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Pay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "RecipientName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "SelectGroup" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Group"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectBank" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Bank"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "AccountNumber" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cellno" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |


    And I click "attachClip" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Show roots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Downloads" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "searchBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "searchTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

#    And I scroll and select file "searchTextBox" from the device
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    And I click "SelectDocument" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |


    And I click "Pay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Amount Tab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "RecipientName"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Download icon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

#    And "push notification message" should be displayed on push notification with payment amount "Amount",recipient "RecipientName",reference "Reference" and sender "Profiles"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
##
    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 3                               | Adding new recipient=Philile Mahlalela with BZ account number = 82000072242;reference = bankzero; ammount =107 45;Group = Beverages and send POP with With_Attachment                    |


  @Add_Recipient_With_Invalid_Information
  Scenario Outline: <TestCaseId_and_TestDataRowIndex> <Test_Case_Description>

    Given I have test data from "pay/Add_Recipient_With_Invalid_Information.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened


    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

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
      | No              | ANDROID                           |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Pay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "RecipientName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "SelectGroup" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Group"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectBank" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Bank"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "AccountNumber" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cellno" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then PopUp text "errorMessages" should be displayed on screen
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 1                               |  Adding new recipient with Invalid Account                   |
      | 2                               |   Adding existing recipient                  |

#############

  @Add_Recipient_With_Invalid_Account_number_and_branch_combination
  Scenario Outline:<TestCaseId_and_TestDataRowIndex> <Test_Case_Description>

    Given I have test data from "pay/Add_Recipient_With_Invalid_Information.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened


    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

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

#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                           |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Pay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "RecipientName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "SelectGroup" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Group"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectBank" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Bank"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "AccountNumber" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cellno" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "errorMessages" should be displayed on "errorMessages" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 3                               |    Adding new recipient with Account number and branch combination for African Bank                 |
      | 4                               |    Adding new recipient with Account number and branch combination for Citibank             |




  @PayExisting_Recipient_With_Email_CellNumber_And_Pay_Send_POP
  Scenario Outline:<TestCaseId_and_TestDataRowIndex> <Test_Case_Description>

    Given I have test data from "pay/BankZeroAdd_Recipient_And_Pay_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I copy "filePath" file to the phone
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

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
      | No              | ANDROID                           |

    And I click "Amount Tab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And Read the current Balance of element "CurrentBalance" and subtract "Amount""extraCharge" from it
      | Take_Screenshot | Element_Locator_Application_Type |
      |  Yes              | ANDROID                        |

    And I click "BackArrow" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Pay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "RecipientName"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "attachClip" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Show roots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Downloads" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "searchBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "searchTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

#    And I scroll and select file "searchTextBox" from the device
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    And I click "SelectDocument" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |


    And I click "Pay2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Amount Tab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "RecipientName"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Download icon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

#    And "push notification message" should be displayed on push notification with payment amount "Amount",recipient "RecipientName",reference "Reference" and sender "Profiles"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 2                              |    Pay existing Recipient                 |



  @Redo_PayExisting_Recipient_With_Email_CellNumber_And_Pay_Send_POP
  Scenario Outline:<TestCaseId_and_TestDataRowIndex> <Test_Case_Description>

    Given I have test data from "pay/BankZeroAdd_Recipient_And_Pay_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I copy "filePath" file to the phone
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

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
      | No              | ANDROID                           |

    And I click "Amount Tab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And Read the current Balance of element "CurrentBalance" and subtract "Amount""extraCharge" from it
      | Take_Screenshot | Element_Locator_Application_Type |
      |  Yes              | ANDROID                        |

    And I click "BackArrow" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Pay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "RecipientName"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I tap "redo" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "attachClip" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Show roots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Downloads" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "searchBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "searchTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

#    And I scroll and select file "searchTextBox" from the device
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    And I click "SelectDocument" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |


    And I click "Pay2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I wait

    And I tap "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Amount Tab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "RecipientName"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Download icon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

#    And "push notification message" should be displayed on push notification with payment amount "Amount",recipient "RecipientName",reference "Reference" and sender "Profiles"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 1                              |    Pay existing Recipient with redo               |

  @Scheduled_Never_Add_Recipient_With_Email_CellNumber_And_Pay_Send_POP_With_Attachment
  Scenario Outline:<TestCaseId_and_TestDataRowIndex> <Test_Case_Description>

    Given I have test data from "pay/Schedule_Add_Recipient_And_Pay_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I copy "filePath" file to the phone
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

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
      | No              | ANDROID                           |

    And I click "Amount Tab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And Read the current Balance of element "CurrentBalance" and subtract "Amount""extraCharge" from it
      | Take_Screenshot | Element_Locator_Application_Type |
      |  Yes              | ANDROID                        |

    And I click "BackArrow" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Pay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "RecipientName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "SelectGroup" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Group"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectBank" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Bank"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "AccountNumber" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cellno" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Tap to Setup" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Schedule Payments Dropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "ScheduleTime"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "attachClip" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Show roots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Downloads" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "searchBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

#    And I enter a value on "searchTextBox" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                         |

    And I click "SelectDocument" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I scroll and select document "searchTextBox" from the device
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Pay2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Amount Tab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "RecipientName"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Download icon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

#    And "push notification message" should be displayed on push notification with payment amount "Amount",recipient "RecipientName",reference "Reference" and sender "Profiles"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 1                               | schedule a payment with never option|

  @Scheduled_OnceOff_Add_Recipient_With_Email_CellNumber_And_Pay_Send_POP_With_Attachment
  Scenario Outline:<TestCaseId_and_TestDataRowIndex> <Test_Case_Description>

    Given I have test data from "pay/Schedule_Add_Recipient_And_Pay_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I copy "filePath" file to the phone
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

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
      | No              | ANDROID                           |

    And I click "Amount Tab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And Read the current Balance of element "CurrentBalance" and subtract "Amount""extraCharge" from it
      | Take_Screenshot | Element_Locator_Application_Type |
      |  Yes              | ANDROID                        |

    And I click "BackArrow" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Pay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "RecipientName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "SelectGroup" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Group"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectBank" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Bank"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "AccountNumber" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cellno" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Tap to Setup" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Schedule Payments Dropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "ScheduleTime"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I pick a date "on date" with "On Date OnceOf" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "attachClip" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Show roots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Downloads" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "searchBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "searchTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

#    And I scroll and select document "searchTextBox" from the device
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    And I click "SelectDocument" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |


    And I click "Pay2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I wait
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Amount Tab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "RecipientName"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Download icon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

#    And "push notification message" should be displayed on push notification with payment amount "Amount",recipient "RecipientName",reference "Reference" and sender "Profiles"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
##
    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 2                               | schedule payment with once off option|



  @Scheduled_Weekly_And_Monthly_Add_Recipient_With_Email_CellNumber_And_Pay_Send_POP_With_Attachment
  Scenario Outline:<TestCaseId_and_TestDataRowIndex> <Test_Case_Description>

    Given I have test data from "pay/Schedule_Add_Recipient_And_Pay_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I copy "filePath" file to the phone
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

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
      | No              | ANDROID                           |

    And I click "Amount Tab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And Read the current Balance of element "CurrentBalance" and subtract "Amount""extraCharge" from it
      | Take_Screenshot | Element_Locator_Application_Type |
      |  Yes              | ANDROID                        |

    And I click "BackArrow" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Pay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "RecipientName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "SelectGroup" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Group"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectBank" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Bank"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "AccountNumber" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cellno" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Tap to Setup" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Schedule Payments Dropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "ScheduleTime"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I pick a date "From date" with "From Date" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Select Day" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Select Day"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I pick a date "To date" with "To Date" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "attachClip" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Show roots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Downloads" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "searchBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "searchTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

#    And I scroll and select document "searchTextBox" from the device
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    And I click "SelectDocument" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |


    And I click "Pay2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I wait
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Amount Tab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "RecipientName"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Download icon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

#    And "push notification message" should be displayed on push notification with payment amount "Amount",recipient "RecipientName",reference "Reference" and sender "Profiles"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
##
    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 3                               | schedule payment with weekly option|
      | 4                               | schedule payment with monthly option|


























































#  @SUCCESSFULLY_EDIT_RECIPIENT_ACCOUNT_DETAILS
#  Scenario Outline:<TestCaseId_and_TestDataRowIndex> <Test_Case_Description>
#
#    Given I have test data from "pay/Existing_Recipient.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
#      | Take_Screenshot |
#      | No              |
#
#    And I a "mobile" "APPLICATION" opened
#
#    And I copy "filePath" file to the phone
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I select "Profiles"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "LoginInPin0" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
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
#      | No              | ANDROID                          |
#
#
#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Pay" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "SelectRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#
#    And I scroll using xpath containing "EditRecipientName"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "pencil" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
## And I tap "EditOpenBank" web page element
##      | Take_Screenshot | Element_Locator_Application_Type |
##      | Yes             | ANDROID                          |
##
##    And I scroll using xpath containing "Bank"
##      | Take_Screenshot | Element_Locator_Application_Type |
##      | Yes             | ANDROID                          |
#
#  And I clear and write on "EditAccountNumber" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#  And I clear and write on "EditCellno" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#And I clear and write on "EditEmail" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#
#    And I click "UpdateExistingRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#
#    And "push notification message" should be displayed on push notification with payment amount "Amount",recipient "RecipientName",reference "Reference" and sender "Profiles"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    Examples:
#      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
#      | 1                              |    Verify that the user can successfully edit a recipient's account details               |
#
#
#


#  @OtherBankAdd_Recipient_And_pay
#  Scenario Outline: Add recipient for other banks and make payment and remove recipient after
#
#    Given I have test data from "pay/OtherBankAdd_Recipient_And_Pay_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
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
#      | No              | ANDROID                          |
#
#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Pay" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "AddNewRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I enter a value on "RecipientName" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "SelectGroup" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I scroll using xpath containing "<Group>"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "SelectBank" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I scroll using xpath containing "<Bank>"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I enter a value on "AccountNumber" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "email" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#
#    And I enter a value on "cellno" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                          |
#
#    And I click "Add" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I enter a value on "Amount" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "Reference" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                          |
#
#    And I click "Pay2" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No             | ANDROID                          |
#
#    And I click "Confirm" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I wait
#
#    And I click "Finish" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Pay" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "SelectRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click on xpath containing "<RecipientName>" nealabs
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#
#    And I click "pencil" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "ic_delete_wc_bin" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "ConfirmYes/No Delete Display" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    Examples:
#      | TestCaseId_and_TestDataRowIndex | RecipientName    |Group|Bank|
#      | 1                               | Thabo Absa        |Beauty|Absa Bank Limited|
#
#  @Pay_Existing_Recipient
#  Scenario Outline: Make payment for existing recipient
#
#    Given I have test data from "pay/Existing_Recipient_And_Pay_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
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
#      | No              | ANDROID                          |
#
#    And I click "Amount Tab" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And Read the current Balance of element "CurrentBalance" and subtract "<AmountToBePaid>" from it
#      | Take_Screenshot | Element_Locator_Application_Type |
#      |  Yes              | ANDROID                        |
#
#    And I click "BackArrow" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Pay" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "SelectRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click on xpath containing "<beneficiary>" nealabs
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I enter a value on "Amount" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "Reference" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                         |
#
#    And I click "Pay2" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No             | ANDROID                          |
#
#    And I click "Confirm" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "Finish" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    Then "Glen: Paid <AmountToBePaid> to <beneficiary> with reference '<ReferenceName>' on CurrentDateTime, balance currentBalance (Glen)." should be displayed on "PushNotification" web page element by android
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                         |
#
#    Examples:
#      | TestCaseId_and_TestDataRowIndex | beneficiary    |AmountToBePaid|ReferenceName|
#      | 1                               |Glen Mankabindi |R100.00          |    Manqoba  |
#
#  @Attach_Document_And_Pay
#  Scenario Outline: Attach Document When paying.
#
#    Given I have test data from "pay/Existing_Recipient_And_Pay_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
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
#      | No              | ANDROID                          |
#
#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Pay" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "SelectRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click on xpath containing "<beneficiary>" nealabs
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I enter a value on "Amount" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "Reference" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                          |
#
#    And I click "Clip Icon" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "Document Icon" web page element
#     | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                         |
#    And I click "Document" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Pay2" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No             | ANDROID                          |
#
#    And I click "Confirm" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I wait
#
#
#    And I click "Finish" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    Examples:
#      | TestCaseId_and_TestDataRowIndex | beneficiary    |Document|
#      | 1                               | Glen Mankabindi|May 2024 payslip.pdf|
#
#  @Update_EXISTING_RECIPIENT_All_Editable_Details
#  Scenario Outline: Update Existing Recipient on Pay
#
#    Given I have test data from "pay/Update_Existing_Reciepent.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
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
#      | No              | ANDROID                          |
#
#    And I enter a value on "LoginInPin4" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes            | ANDROID                         |
#
#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Pay" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No            | ANDROID                          |
#
#    And I click "SelectRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes           | ANDROID                          |
#    And I click on xpath containing "<SelectExistingRecipient>" nealabs
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "PenIcone" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I enter a value on "UpdateRecipientName" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                          |
#    And I click "SelectGroup" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I scroll using xpath containing "<Group>"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#     And I click "SelectBank" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#       | Yes             | ANDROID                         |
#    And I scroll using xpath containing "<Bank>"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click on xpath containing "<AccountType>"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#   And I enter a value on "AccountNumber" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#     | No              | ANDROID                          |
#    And I click "UpdateExistingRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#   Then "Sir Glen" should be displayed on "ExpectedRecipientName" web page element
#     | Take_Screenshot | Element_Locator_Application_Type |
#     | Yes             | ANDROID                          |
#  #{string} should be displayed on {string} web page element
#    #And I enter a value on "Amount" text box
#      #| Take_Screenshot | Element_Locator_Application_Type |
#      #| No              | ANDROID                          |
#
#   # And I enter a value on "Reference" text box
#     # | Take_Screenshot | Element_Locator_Application_Type |
#    # | No              | ANDROID                          |
#
#    #And I click "Send" web page element
#     # | Take_Screenshot | Element_Locator_Application_Type |
#    #  | Yes             | ANDROID                          |
#
#    #And I click "Confirm" web page element
#     # | Take_Screenshot | Element_Locator_Application_Type |
#      #| Yes             | ANDROID                          |
#
#   # And I click "Finish" web page element
#    #  | Take_Screenshot | Element_Locator_Application_Type |
#     # | Yes             | ANDROID                          |
#
#
#    Examples:
#      | TestCaseId_and_TestDataRowIndex | Bank|SelectExistingRecipient|Group|AccountType|
#      | 1                               |Capitec Bank Limited|PHILILE46 |Buety  |CurrentAccount|
##      | 2                               | ABSA-Ithala|Manqoba Mkhize|Bussiness|Savings Account|
##      | 3                               | Absa Bank Limited|Glen Mankabindi|School|Transmission Account|
##      | 4                               | Access Bank (south Africa) Ltd|Cell C|Entertainment|Bond Account|
#  #      | 4                               | Access Bank (south Africa) Ltd|Cell C|Entertainment|Subscription Share|
#  @INCORRECT_BANK_FOR_THE_ACCOUNT_NUMBER
#  Scenario Outline: Edit Recipient Account Details: Choose an Incorrect Bank For The Account Number.
#
#    Given I have test data from "pay/Invalid_bank_Account.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
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
#      | No              | ANDROID                          |
#
#    And I enter a value on "LoginInPin4" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes            | ANDROID                         |
#
#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Pay" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No            | ANDROID                          |
#
#    And I click "SelectRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes           | ANDROID                          |
#    And I click on xpath containing "<SelectExistingRecipient>" nealabs
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "PenIcone" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "SelectBank" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                         |
#    And I scroll using xpath containing "<Bank>"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I enter a value on "validAccountNumber" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "UpdateExistingRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#   # Then "[24] Invalid Account" should be displayed on "PopUpDisplay" web page element
#      #| Take_Screenshot | Element_Locator_Application_Type |
#      #| Yes             | ANDROID                          |
#  #{string} should be displayed on {string} web page element
#    #And I enter a value on "Amount" text box
#      #| Take_Screenshot | Element_Locator_Application_Type |
#      #| No              | ANDROID                          |
#
#   # And I enter a value on "Reference" text box
#     # | Take_Screenshot | Element_Locator_Application_Type |
#    # | No              | ANDROID                          |
#
#    #And I click "Send" web page element
#     # | Take_Screenshot | Element_Locator_Application_Type |
#    #  | Yes             | ANDROID                          |
#
#    #And I click "Confirm" web page element
#     # | Take_Screenshot | Element_Locator_Application_Type |
#      #| Yes             | ANDROID                          |
#
#   # And I click "Finish" web page element
#    #  | Take_Screenshot | Element_Locator_Application_Type |
#     # | Yes             | ANDROID                          |
#
#
#    Examples:
#      | TestCaseId_and_TestDataRowIndex | Bank|SelectExistingRecipient|
#      | 1                               |Absa Bank Limited|Glen Mankabindi |
##      | 2                               | BDD        |Manqoba Mkhize|
##      | 3                               | BDD        |Telkom|
##      | 4                               | BDD        |Cell C|
#
#  @USE_INVALID_BANK_ACCOUNT_NUMBER_ON_BANKZERO
#  Scenario Outline: Edit Recipient Account Details: Use Invalid Bank Account Number for BankZero.
#
#    Given I have test data from "pay/Invalid_bank_Account.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
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
#      | No              | ANDROID                          |
#
#    And I enter a value on "LoginInPin4" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes            | ANDROID                         |
#
#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Pay" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No            | ANDROID                          |
#
#    And I click "SelectRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes           | ANDROID                          |
#    And I click on xpath containing "<SelectExistingRecipient>" nealabs
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "PenIcone" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I enter a value on "InvalidAccountNumber" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "UpdateExistingRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    Then "[24] Invalid Account" should be displayed on "PopUpDisplay" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#  #{string} should be displayed on {string} web page element
#    #And I enter a value on "Amount" text box
#      #| Take_Screenshot | Element_Locator_Application_Type |
#      #| No              | ANDROID                          |
#
#   # And I enter a value on "Reference" text box
#     # | Take_Screenshot | Element_Locator_Application_Type |
#    # | No              | ANDROID                          |
#
#    #And I click "Send" web page element
#     # | Take_Screenshot | Element_Locator_Application_Type |
#    #  | Yes             | ANDROID                          |
#
#    #And I click "Confirm" web page element
#     # | Take_Screenshot | Element_Locator_Application_Type |
#      #| Yes             | ANDROID                          |
#
#   # And I click "Finish" web page element
#    #  | Take_Screenshot | Element_Locator_Application_Type |
#     # | Yes             | ANDROID                          |
#
#
#    Examples:
#      | TestCaseId_and_TestDataRowIndex | Group|SelectExistingRecipient|
#      | 1                               |Family & Friends|Glen Mankabindi |
##      | 2                               | BDD        |Manqoba Mkhize|
##      | 3                               | BDD        |Telkom|
##      | 4                               | BDD        |Cell C|
#  @Add_New_Recipient_While_Trying_to_Pay_Existing_Recipient
#  Scenario Outline: Add New Recipient While Trying to Pay Existing Recipient
#
#    Given I have test data from "pay/Add_New_Recipient_On_Existing.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
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
#      | No              | ANDROID                          |
#
#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Pay" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "SelectRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click on xpath containing "<beneficiary>" nealabs
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "plusSign" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I enter a value on "RecipientName" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "SelectGroup" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I scroll using xpath containing "<Group>"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I enter a value on "AccountNumber" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "email" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "cellno" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                          |
#
#    And I click "Add" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I enter a value on "Amount" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "Reference" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                          |
#
#    And I click "Pay2" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No             | ANDROID                          |
#
#    And I click "Confirm" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I wait
#
#
#    And I click "Finish" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    Examples:
#      | TestCaseId_and_TestDataRowIndex | beneficiary    |Group|
#      | 1                               | Glen Mankabindi        |Beauty|
#
#  @DELETE_EXISTING_RECIPIENT_On_Pay
#  Scenario Outline: Delete Existing Recipient
#
#    Given I have test data from "pay/Delete_Existing Recipient.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
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
#      | No              | ANDROID                          |
#
#    And I enter a value on "LoginInPin4" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes            | ANDROID                         |
#
#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Pay" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No            | ANDROID                          |
#
#    And I click "SelectRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes           | ANDROID                          |
#    And I click on xpath containing "<SelectExistingRecipient>" nealabs
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "PenIcone" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "DeleteExistingRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "ConfirmYes/No Delete Display" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
####I need to assert if wasd the Recipient deleted or not
#    Examples:
#      | TestCaseId_and_TestDataRowIndex | beneficiary    |SelectExistingRecipient|
#      | 1                               | Glen Mankabindi        |Philile|
#
#  @Send_Proof_Of_Payment
#  Scenario Outline: Send Proof Of Payment
#
#    Given I have test data from "pay/Send_Proof_Of_Payment.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
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
#      | No              | ANDROID                          |
#
#    And I enter a value on "LoginInPin4" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes            | ANDROID                         |
#
#    And I click "Amount Tab" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "ArrowIcone" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes           | ANDROID                          |
#
#    And I click "Download icon" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes           | ANDROID                          |
#
#    Then "Sir Glen" should be displayed on "ExpectedRecipientName" web page element
#      #| Take_Screenshot | Element_Locator_Application_Type |
#      #| Yes             | ANDROID                          |
#
#
#    And I click "Done Button" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    Examples:
#      | TestCaseId_and_TestDataRowIndex | beneficiary    |SelectExistingRecipient|
#      | 1                               | Glen Mankabindi        |Beauty|
#
#  @Schedule_Payments_For_Existing_Recipient
#  Scenario Outline: Schedule Payments For Existing Recipient On <ScheduleTime>
#
#    Given I have test data from "pay/Schedule_Payments_For_Existing_Recipient.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
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
#      | No              | ANDROID                          |
#
#    And I enter a value on "LoginInPin4" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes            | ANDROID                         |
#
#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Pay" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No            | ANDROID                          |
#
#    And I click "SelectRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes           | ANDROID                          |
#    And I click on xpath containing "<SelectExistingRecipient>" nealabs
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "PenIcone" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "Tap to Setup" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "Schedule Payments Dropdown" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#  And I click on xpath containing "<ScheduleTime>"
#    | Take_Screenshot | Element_Locator_Application_Type |
#    | Yes             | ANDROID                          |
#    And I click "Select Day" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click on xpath containing "<DaysOfTheWeek>"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "From Date" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "Callender Date" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "OK Button" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "To Date" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "To Date Callender Options" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "OK Button" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I enter a value on "Reference" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#    And I enter a value on "Amount" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#    And I click "UpdateExistingRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    Then "R100.00 weekly on Tuesday till 31 Jul-24" should be displayed on "Product Type" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#  #{string} should be displayed on {string} web page element
#    #And I enter a value on "Amount" text box
#      #| Take_Screenshot | Element_Locator_Application_Type |
#      #| No              | ANDROID                          |
#
#   # And I enter a value on "Reference" text box
#     # | Take_Screenshot | Element_Locator_Application_Type |
#    # | No              | ANDROID                          |
#
#    #And I click "Send" web page element
#     # | Take_Screenshot | Element_Locator_Application_Type |
#    #  | Yes             | ANDROID                          |
#
#    #And I click "Confirm" web page element
#     # | Take_Screenshot | Element_Locator_Application_Type |
#      #| Yes             | ANDROID                          |
#
#   # And I click "Finish" web page element
#    #  | Take_Screenshot | Element_Locator_Application_Type |
#     # | Yes             | ANDROID                          |
#
#
#    Examples:
#      | TestCaseId_and_TestDataRowIndex |ScheduleTime |DaysOfTheWeek|SelectExistingRecipient|
#      | 1                               |Weekly|Monday|Philile|
##      | 2                               | Weekly|Tuesday|Glen Mankabindi|
##      | 3                               | Weekly|Wednesday|Glen Mankabindi|
##      | 4                               | Weekly|Thursday|Glen Mankabindi|
##      | 5                              |Weekly|Friday|Glen Mankabindi|
##      | 6                               |Weekly|Saturday|Glen Mankabindi|
##      | 7                               |Weekly|Sunday|Glen Mankabindi|
#      #| 8                               |Monthly|1st day|Glen Mankabindi|
##      | 9                               | Monthly|2nd day|Glen Mankabindi|
##      | 10                               | Monthly|3rd day|Glen Mankabindi|
##      | 11                               | Monthly|4th day|Glen Mankabindi|
##      | 12                              |Monthly|5th day|Glen Mankabindi|
##      | 13                               |Monthly|6th day|Glen Mankabindi|
##      | 14                               |Monthly|7th day|Glen Mankabindi|
#    #  | 15                               |Monthly|8th day|Glen Mankabindi|
##      | 16                               | Monthly|9th day|Glen Mankabindi|
##      | 17                               | Monthly|10th day|Glen Mankabindi|
##      | 18                               | Monthly|11th day|Glen Mankabindi|
##      | 19                            |Monthly|12th day|Glen Mankabindi|
##      | 20                              |Monthly|13th day|Glen Mankabindi|
##      | 21                               |Monthly|14th day|Glen Mankabindi|
#  #      | 22                             |Monthly|15th day|Glen Mankabindi|
##      | 23                               |Monthly|16th day|Glen Mankabindi|
#  #      | 24                             |Monthly|17th day|Glen Mankabindi|
##      | 25                               |Monthly|18th day|Glen Mankabindi|
#  #      | 26                              |Monthly|19th day|Glen Mankabindi|
##      | 27                               |Monthly|20th day|Glen Mankabindi|
#  #      | 28                              |Monthly|21st day|Glen Mankabindi|
##      | 29                               |Monthly|22nd day|Glen Mankabindi|
#    #      | 30                             |Monthly|23rd day|Glen Mankabindi|
##      | 31                              |Monthly|24th day|Glen Mankabindi|
#     # | 32                             |Monthly|25th day|Glen Mankabindi|
##      | 33                              |Monthly|26th day|Glen Mankabindi|
#  #      | 34                              |Monthly|27th day|Glen Mankabindi|
##      | 35                               |Monthly|28th day|Glen Mankabindi|
#  #      | 36                              |Monthly|29th day|Glen Mankabindi|
##      | 37                               |Monthly|30th day|Glen Mankabindi|
#    #      | 38                             |Monthly|31st day|Glen Mankabindi|
##      | 39                             |Once-off||Glen Mankabindi|
#
#
#  @Schedule_Payment_For_New_Recipient
#  Scenario Outline: Schedule Payment For New Recipient On <ScheduleTime> Starting from <Days>
#
#    Given I have test data from "pay/Schedule_Payment_For_New_Recipient..csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay/webdriver_element_list.csv"
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
#      | No              | ANDROID                          |
#
#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Pay" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "AddNewRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I enter a value on "RecipientName" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "SelectGroup" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I scroll using xpath containing "<Group>"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I enter a value on "AccountNumber" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "email" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "cellno" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                          |
#
#    And I click "Tap to Setup" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Schedule Payments Dropdown" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click on xpath containing "<ScheduleTime>"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Select Day" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click on xpath containing "<Days>"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "From Date" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Callender Date" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "OK Button" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "To Date" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "To Date Callender Options" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "OK Button" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I enter a value on "Reference" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "Amount" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "Add" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    Then "R100.00 weekly on Monday till 31 Jul-24" should be displayed on "Product Type" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |





#    Examples:
#      | TestCaseId_and_TestDataRowIndex | ScheduleTime |Days|Group|
#      | 1                               |Weekly|Monday|Business |
#      | 2                               | Weekly|Tuesday|Business|
#      | 3                               | Weekly|Wednesday|Business|
#      | 4                               | Weekly|Thursday|Business|
#      | 5                              |Weekly|Friday|Business|
#      | 6                               |Weekly|Saturday|Business|
#      | 7                               |Weekly|Sunday|Business|
      #| 8                               |Monthly|1st day|Business|
#      | 9                               | Monthly|2nd day|Business|
#      | 10                               | Monthly|3rd day|Business|
#      | 11                               | Monthly|4th day|Business|
#      | 12                              |Monthly|5th day|Business|
#      | 13                               |Monthly|6th day|Business|
#      | 14                               |Monthly|7th day|Business|
    #  | 15                               |Monthly|8th day|Business|
#      | 16                               | Monthly|9th day|Business|
#      | 17                               | Monthly|10th day|Business|
#      | 18                               | Monthly|11th day|Business|
#      | 19                            |Monthly|12th day|Business|
#      | 20                              |Monthly|13th day|Business|
#      | 21                               |Monthly|14th day|Business|
  #      | 22                             |Monthly|15th day|Business|
#      | 23                               |Monthly|16th day|Business|
  #      | 24                             |Monthly|17th day|Business|
#      | 25                               |Monthly|18th day|Business|
  #      | 26                              |Monthly|19th day|Business|
#      | 27                               |Monthly|20th day|Business|
  #      | 28                              |Monthly|21st day|Business|
#      | 29                               |Monthly|22nd day|Business|
    #      | 30                             |Monthly|23rd day|Business|
#      | 31                              |Monthly|24th day|Business|
     # | 32                             |Monthly|25th day|Business|
#      | 33                              |Monthly|26th day|Business|
  #      | 34                              |Monthly|27th day|Business|
#      | 35                               |Monthly|28th day|Business|
  #      | 36                              |Monthly|29th day|Business|
#      | 37                               |Monthly|30th day|Business|
    #      | 38                             |Monthly|31st day|Business|
#      | 39                             |Once-off||Business|