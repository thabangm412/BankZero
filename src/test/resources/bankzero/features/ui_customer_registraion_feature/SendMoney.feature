@Send @web_application

Feature: Send Money

  @ADD_NEW_RECIPIENT_TO_SEND_MONEY
  Scenario Outline: <Test_Case_Description>

    Given I have test data from "sendmoney/sendMoneyData.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "sendmoney/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |
            And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |


    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SendMoney" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I enter a value on "RecipientName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "PhoneNumber" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "Send" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 1                               |





  @SEND_MONEY_ON_EXISTING_RECIPIENT
  Scenario Outline: <Test_Case_Description>

    Given I have test data from "sendmoney/sendMoneyData.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "sendmoney/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |
            And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |


    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SendMoney" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "SelectRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes           | ANDROID                          |

   And  I scroll using xpath containing "SelectExistingRecipient"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "sendbtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    Examples:
      | TestCaseId_and_TestDataRowIndex |
     # | 1                               |
      | 2                               |


  @SEND_MONEY_ON_EXISTING_RECIPIENT_And_Attach_Document
  Scenario Outline: <Test_Case_Description>

    Given I have test data from "sendmoney/sendMoneyData.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "sendmoney/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |
            And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |


    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SendMoney" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "SelectRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes           | ANDROID                          |

    And  I scroll using xpath containing "SelectExistingRecipient"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "Clip Icon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Document Icon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                         |
    When I scroll using xpath containing "Document"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "sendbtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    Examples:
      | TestCaseId_and_TestDataRowIndex | keyword    |
      # | 1                               | BDD        |
#      | 2                               | BDD        |
       | 3                               | BDD        |



  @SEND_MONEY_ON_EXISTING_RECIPIENT_Using_Redo
  Scenario Outline:  <Test_Case_Description>

    Given I have test data from "sendmoney/sendMoneyData.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "sendmoney/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |
            And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |


    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SendMoney" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "SelectRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes           | ANDROID                          |

    And  I scroll using xpath containing "SelectExistingRecipient"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I tap "redoSvg" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "sendbtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 6                               |



  @Update_EXISTING_RECIPIENT_AND_SEND_MONEY
  Scenario Outline: <Test_Case_Description>

    Given I have test data from "sendmoney/sendMoneyData.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "sendmoney/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |
            And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |


    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SendMoney" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "SelectRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes           | ANDROID                          |


    And  I scroll using xpath containing "SelectExistingRecipient"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "PenIcone" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "UpdateRecipientName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "UpdateExistingRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "Send" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    Examples:
      | TestCaseId_and_TestDataRowIndex | keyword    |
      | 4                              | BDD        |




  @DELETE_EXISTING_RECIPIENT
  Scenario Outline: <Test_Case_Description>

    Given I have test data from "sendmoney/sendMoneyData.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "sendmoney/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |

        And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SendMoney" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "SelectRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes           | ANDROID                          |
    And  I scroll using xpath containing "SelectExistingRecipient"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "PenIcone" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "DeleteExistingRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ConfirmYes/No Delete Display" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex | keyword    |SelectExistingRecipient|
      #| 1                               | BDD        |Glen Ngwane|
      | 5                             | BDD       |Automation20241011090845689 |
