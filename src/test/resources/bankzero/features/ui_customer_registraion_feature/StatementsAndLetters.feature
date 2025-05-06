@Statement_letters  @web_application

Feature: Statement and Letters
@Send_Email_Statement_And_Letters
  Scenario Outline: Statement and Letters <Test_Case_Description>

    Given I have test data from "statementsandletters/statementsAndLetters_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "statementsandletters/webdriver_element_list.csv"
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



    And I click "Statement&Letters" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectDocumentDropDown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

  When I scroll using xpath containing "TypeOfDocument"
    | Take_Screenshot | Element_Locator_Application_Type |
    | Yes              | ANDROID                         |

    And I click "emailBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "EmailMessage" should be displayed on "messageDisplay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Ok" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    Examples:
      | TestCaseId_and_TestDataRowIndex | Test_Case_Description    |
      | 1                               | Send email for document type = Account Confirmation Letter    |
      | 2                               | Send email for document type = Salary Switch Letter   |
     | 3                               | Send email for document type = Welcome Letter  |

  @Send_Email_Statement_And_Letters_Account_Statements
  Scenario Outline: "<Test_Case_Description>"

    Given I have test data from "statementsandletters/statementsAndLetters_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "statementsandletters/webdriver_element_list.csv"
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

    And I click "Statement&Letters" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectDocumentDropDown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "TypeOfDocument"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |


    And I click "selectPeriodDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "selectPeriod"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |


    And I click "emailBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "EmailMessage" should be displayed on "messageDisplay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Ok" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "finishBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    Examples:
      | TestCaseId_and_TestDataRowIndex | Test_Case_Description    |
      | 5                                 |Statement and Letters  Send email for document type = Account Statements : Period September-2024        |
      | 4                                 |Statement and Letters  Send email for document type = Account Statements : Period October-2024        |

  @Download_Document
  Scenario Outline: Download payments recipients

    Given I have test data from "statementsandletters/statementsAndLetters_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "statementsandletters/webdriver_element_list.csv"
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

    And I click "Statement&Letters" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectDocumentDropDown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "TypeOfDocument"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "downloadBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "saveBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "SaveMessage" should be displayed on "savedMessage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Ok" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "finishBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    Examples:
      | TestCaseId_and_TestDataRowIndex | Test_Case_Description    |
      | 6                               |Download payments recipients         |