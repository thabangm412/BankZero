@WhoIsThis  @web_application

Feature:Who Is This
  @Same_as_registered_address
  Scenario Outline: Same as registered address

    Given I have test data from "WhoIsThis/WhoIsThis.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "WhoIsThis/webdriver_element_list.csv"
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
      | No              | ANDROID                           |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "WhoIsTheseBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I clear and write on "RegisteredName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "DropdownSICgroup" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    When I scroll using xpath containing "SICgroup"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |
#
    And I click "DropdownSICindustry" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I scroll using xpath containing "SICindustry"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "DropdownSourceFund" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    When I scroll using xpath containing "Income"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "OkBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "DropdownSourceOfWealth" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    When I scroll using xpath containing "wealth"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "OkBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I clear and write on "OtherSpecify" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I clear and write on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "NextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "DropDownOwnership" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    When I scroll using xpath containing "Ownership"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "DropDownAddress" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    When I scroll using xpath containing "AddressType"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "TradingAdressCheckBox" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "NextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "AppPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "AppPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "AppPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "AppPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "AppPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "CardPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "CardPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "CardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "CardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "CardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "UpdateBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 1                               |



  @not_same_registered_address
  Scenario Outline: not same registered address

    Given I have test data from "WhoIsThis/WhoIsThis.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "WhoIsThis/webdriver_element_list.csv"
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
      | No              | ANDROID                           |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "WhoIsTheseBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |


    And I clear and write on "RegisteredName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "DropdownSICgroup" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    When I scroll using xpath containing "SICgroup"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "DropdownSICindustry" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I scroll using xpath containing "SICindustry"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "DropdownSourceFund" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    When I scroll using xpath containing "income"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "OkBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "DropdownSourceOfWealth" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    When I scroll using xpath containing "wealth"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "OkBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I clear and write on "OtherSpecify" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I clear and write on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "NextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "DropDownOwnership" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    When I scroll using xpath containing "Ownership"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "DropDownAddress" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    When I scroll using xpath containing "AddressType"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "TradingAdressCheckBox" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "TradingAdressCheckBox" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "DropDownAddressNot" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    When I scroll using xpath containing "AddressTypeNot"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

        And I clear and enter a value on "OfficeName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I clear and enter a value on "road" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I clear and enter a value on "Suburb/City" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "NextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "AppPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "AppPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "AppPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "AppPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "AppPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "CardPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "CardPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "CardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "CardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "CardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "UpdateBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 2                               |
