@PayMany @web_application

Feature: Add New Recipient And Pay

  @Pay_Many_With_New_Payment
  Scenario Outline: Make payment for existing recipient and select new payment

    Given I have test data from "pay_many/Pay_Many_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay_many/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I enter a value on "LoginInPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              |ANDROID                          |


    And I enter a value on "LoginInPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              |ANDROID                          |

    And I enter a value on "LoginInPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              |ANDROID                          |

    And I enter a value on "LoginInPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              |ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              |ANDROID                          |

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |

    And I click "PayMany" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |

    And I use "src/test/resources/bankzero/testdata/sit/pay_many/Recipient.csv" to pay "<RecipientID>" for payment option "newPayment"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |
    And I click "Pay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |
    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex | beneficiary    |RecipientID|
      | 1                               | Glen Mankabindi        |1,2|

  @Pay_Many_With_Redo_Payment
  Scenario Outline: Make payment for existing recipient and select redo payment

    Given I have test data from "pay_many/Pay_Many_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay_many/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I enter a value on "LoginInPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              |ANDROID                          |


    And I enter a value on "LoginInPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              |ANDROID                          |

    And I enter a value on "LoginInPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              |ANDROID                          |

    And I enter a value on "LoginInPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              |ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              |ANDROID                          |

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |

    And I click "PayMany" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |

    And I use "src/test/resources/bankzero/testdata/sit/pay_many/Recipient.csv" to pay "<RecipientID>" for payment option "redoPayment"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |
    And I click "Pay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |
    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex | beneficiary    |RecipientID|
      | 1                               | Glen Mankabindi        |1,3|


  @Pay_Many_With_CSV
  Scenario Outline: Make payment for recipient with "<csv name>" csv

    Given I have test data from "pay_many/Pay_Many_With_CSV_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "pay_many/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I enter a value on "LoginInPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              |ANDROID                          |


    And I enter a value on "LoginInPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              |ANDROID                          |

    And I enter a value on "LoginInPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              |ANDROID                          |

    And I enter a value on "LoginInPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              |ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              |ANDROID                          |

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |

    And I click "PayMany" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |
    And I click "csvBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |
    And I click "nextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |

    And I enter a value on "Search" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              |ANDROID                          |

    And I click "<csv name>" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |

    And I click "Import" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |
#    And I click "notFoundTapToAdd" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             |ANDROID                          |

    And I click "Pay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |

    And I use "<csvPath>" to to validate payment "<csvSeparator>"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |
    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             |ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |csv name|csvSeparator|csvPath|
#      | 1                               | Payments-semi|;            |src/test/resources/bankzero/testdata/sit/pay_many/Payments-semi.csv|
      | 2                               | DiscoveryCsv|;            |  src/test/resources/bankzero/testdata/sit/pay_many/Discovery.csv  |