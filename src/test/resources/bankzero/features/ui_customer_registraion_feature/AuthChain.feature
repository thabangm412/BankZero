@AuthChain  @web_application

Feature:Authorisation  Chain
  @Add_Authorizers
  Scenario Outline: Add authorizers

    Given I have test data from "authorisation_chain/Authorisation_Chain_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "authorisation_chain/webdriver_element_list.csv"
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

    And I click "VericalBusinessDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "AuthorizationChainBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "PlusSign" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I clear and write on "PreferredName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I scroll using xpath containing "Roles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "CellNumber" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "AddBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "UpdateBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 1                              |
      | 2                              |
     | 3                               |

  @Add_Level_A_Authorisers
  Scenario Outline: Add Level A authorisers

    Given I have test data from "authorisation_chain/Authorisation_Chain_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "authorisation_chain/webdriver_element_list.csv"
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
      | Yes              | ANDROID                          |

    And I click "VericalBusinessDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "AuthorizationChainBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |



    And I drag and drop "Source" to "Target"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "AmountA" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "UpdateBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 4                              |











#  @Add_Level_B_Authorisers
#  Scenario Outline: Add Level B authorisers
#
#    Given I have test data from "authorisation_chain/Authorisation_Chain_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "authorisation_chain/webdriver_element_list.csv"
#      | Take_Screenshot |
#      | No              |
#
#    And I a "mobile" "APPLICATION" opened
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
#    And I click "VericalBusinessDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "AuthorizationChainBtn" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    #drag and drop method

#
#    And I enter a value on "AmountB" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "UpdateBtn" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "Confirm" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    Examples:
#      | TestCaseId_and_TestDataRowIndex |
#      | 5                              |
#
#  @Add_Level_C_Authorisers
#  Scenario Outline: Add Level C authorisers
#
#    Given I have test data from "authorisation_chain/Authorisation_Chain_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "authorisation_chain/webdriver_element_list.csv"
#      | Take_Screenshot |
#      | No              |
#
#    And I a "mobile" "APPLICATION" opened
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
#    And I click "VericalBusinessDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "AuthorizationChainBtn" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    #drag and drop method
#
#    And I enter a value on "AmountC" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "UpdateBtn" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "Confirm" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    Examples:
#      | TestCaseId_and_TestDataRowIndex |
#      | 6                              |

#
#  @AAdd_account_relationship_banking
#  Scenario Outline: Add account relationship banking
#
#    Given I have test data from "authorisation_chain/Relationship_banking_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "authorisation_chain/webdriver_element_list.csv"
#      | Take_Screenshot |
#      | No              |
#
#    And I a "mobile" "APPLICATION" opened
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
#    And I click "VericalBusinessDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "AuthorizationChainBtn" web page element
#     | Take_Screenshot | Element_Locator_Application_Type |
#     | No              | ANDROID                          |
#
#    And I click "addRelation" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      |   Yes              | ANDROID                          |
#
#    And I clear and write on "NameEdit" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I clear and write on "CellNo" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "DropDownRole" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    When I scroll using xpath containing "Role"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                         |
#
#    And I click "AddBtn" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "UpdateBtn" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "Confirm" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#        Examples:
#      | TestCaseId_and_TestDataRowIndex |
#      | 1                              |
#
#  @AAdd_account_relationship_banking_account_2
#  Scenario Outline: Add account relationship banking account 2
#
#    Given I have test data from "authorisation_chain/Relationship_banking_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "authorisation_chain/webdriver_element_list.csv"
#      | Take_Screenshot |
#      | No              |
#
#    And I a "mobile" "APPLICATION" opened
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
#    And I click "VericalBusinessDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "AuthorizationChainBtn" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "addRelation2" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      |   Yes              | ANDROID                          |
#
#    And I clear and write on "NameEdit" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I clear and write on "CellNo" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "DropDownRole" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    When I scroll using xpath containing "Role"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                         |
#
#    And I click "AddBtn" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "UpdateBtn" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#     And I click "Confirm" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    Examples:
#      | TestCaseId_and_TestDataRowIndex |
#      | 2                              |

#  @Delete_account_relationship_banking_account
#  Scenario Outline: Delete account relationship banking account
#
#    Given I have test data from "authorisation_chain/Relationship_banking_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "authorisation_chain/webdriver_element_list.csv"
#      | Take_Screenshot |
#      | No              |
#
#    And I a "mobile" "APPLICATION" opened
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
#    And I click "VericalBusinessDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                          |
#
#    And I click "AuthorizationChainBtn" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                          |
#
#    And I click "DeleteBtn" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "RemoveBtn" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "UpdateBtn" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "Confirm" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    Examples:
#      | TestCaseId_and_TestDataRowIndex |
#      | 3                              |
