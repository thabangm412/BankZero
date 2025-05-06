@Statement&letters  @web_application

Feature: Statement and Letters for days notice
  @Statement_And_Letters_notice_account
  Scenario Outline: Statement and Letters on notice 7 days notice <Test_Case_Description>


    Given I have test data from "statementsandletters/statementAndLettersNoticeAndSavings_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "statementsandletters/webdriver_element_list.csv"
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
#    And I select "Profiles"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
    And I click "VerticalDots7" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Statement&Letters" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectDocumentDropDown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "TypeOfDocument" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "selectPeriodDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "selectPeriod"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "emailBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "EmailMessage" should be displayed on "Failedmassage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    And I click "Ok" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |



    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 1                              |




  @Statement_And_Letters_notice_account
  Scenario Outline:Statement and Letters on notice 32 days notice <Test_Case_Description>

    Given I have test data from "statementsandletters/statementAndLettersNoticeAndSavings_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "statementsandletters/webdriver_element_list.csv"
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
#    And I select "Profiles"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
    And I click "VerticalDots32" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Statement&Letters" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectDocumentDropDown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "TypeOfDocument" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "selectPeriodDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    When I scroll using xpath containing "selectPeriod"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |


#    And I click "October2024" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

    And I click "emailBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "EmailMessage" should be displayed on "Failedmassage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    And I click "Ok" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 2                               |




  @Statement_And_Letters_notice_account
  Scenario Outline: Statement and Letters on notice 45 days notice <Test_Case_Description>


    Given I have test data from "statementsandletters/statementAndLettersNoticeAndSavings_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "statementsandletters/webdriver_element_list.csv"
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
#    And I select "Profiles"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
    And I click "VerticalDots45" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Statement&Letters" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectDocumentDropDown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "TypeOfDocument" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "selectPeriodDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "selectPeriod"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "emailBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "EmailMessage" should be displayed on "Failedmassage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    And I click "Ok" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 3                               |

  @Statement_And_Letters
  Scenario Outline:Statement and Letters on savings account <Test_Case_Description>

    Given I have test data from "statementsandletters/statementAndLettersNoticeAndSavings_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "statementsandletters/webdriver_element_list.csv"
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
#    And I select "Profiles"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
    And I click "SavingScriptDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Statement&Letters" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectDocumentDropDown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "TypeOfDocument" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    And I click "selectPeriodDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    When I scroll using xpath containing "selectPeriod"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "emailBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "EmailMessage" should be displayed on "Failedmassage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    And I click "Ok" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |



    Examples:
      | TestCaseId_and_TestDataRowIndex | Failedmassage           | TypeOfDocument |
      | 4                               | Email failed with error |                |


















