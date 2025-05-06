@TransactionHistory  @web_application

Feature: Transaction History
  @Transaction_History_Pay
  Scenario Outline:Transaction History on Pay

    Given I have test data from "transactionhistory/transactionHistory_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "transactionhistory/webdriver_element_list.csv"
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

    #And I click "Amount Tab" web page element
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes             | ANDROID                          |

    #And Read the current Balance of element "accountBalance" and subtract "<AmountPayed>" from it
     # | Take_Screenshot | Element_Locator_Application_Type |
      #|  Yes              | ANDROID                        |

    #And I click "BackArrow" web page element
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes             | ANDROID                          |

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Pay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "recipientDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "recipientName" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "Pay2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "confirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I wait
    And I wait
    And I wait
    And I wait
    And I wait
    And I wait
    And I wait

    And I click "finishBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "accountActivity" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    #Then "accountBalance" should be displayed on "currentBalance" web page element
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes             | ANDROID                          |

    And I click "transactionTitle" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "<RecipientName>" should be displayed on "Recipient Name" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "<AmountPayed>" should be displayed on "purchaseAmount" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "<Reference>" should be displayed on "ReferenceName" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    #Then "Mpho: Paid <AmountPayed> to <RecipientName> with reference '<Reference>' on transactionDate, balance currentBalance (Given)" should be displayed on "PushNotification" web page element by android
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex | RecipientName    |Reference |AmountPayed|
      #| 1                               | Mpho             |Food      | R10.00    |
      | 2                               | Mpho             |Transport | R100      |
      #| 3                               | Mpho            |Beverages | R70       |

  @Transaction_History_Transfer
  Scenario Outline:Transaction History on Transfer

    Given I have test data from "transactionhistory/transactionHistory_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "transactionhistory/webdriver_element_list.csv"
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

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Transfer" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "accName" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "<RecipientName>"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "transferBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "confirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I wait
    And I wait
    And I wait
    And I wait
    And I wait
    And I wait
    And I wait

    And I click "finishBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "accountActivity" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "transactionTitle" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "<RecipientName>" should be displayed on "Recipient Name" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "<AmountPayed>" should be displayed on "purchaseAmount" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "<Reference>" should be displayed on "ReferenceName" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex | RecipientName    |Reference |AmountPayed|
      #| 1                               | Birthday         |Birthday  | R50.00    |
      #| 2                               | Car finance      |Car       | R100      |
      | 3                               | Food             |Grocery   | R70       |
      #| 4                               | Transportation   |Transport | R80.00    |



