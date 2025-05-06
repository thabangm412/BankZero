@WhoAmI  @web_application

Feature: Who Am I
  @Who_Am_I
  Scenario Outline: Update Who Am I Page

    Given I have test data from "who_am_i/WhoAmI.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "who_am_i/webdriver_element_list.csv"
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
    And I click "ic_person_new" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "my_details" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "<Surname>" should be displayed on "surname" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    Then "<All_Names>" should be displayed on "all_names" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    Then "<Preferred_Name>" should be displayed on "preferred_name" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    Then "<Tittle>" should be displayed on "tittle" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    Then "<SA_ID_No>" should be displayed on "sa_id_no" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    Then "<Nationality>" should be displayed on "nationality" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "<Email>" should be displayed on "email" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    Then "<Street_Adreess>" should be displayed on "street_address" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

#    And I scroll using xpath containing "<City>"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#    Then "<City>" should be displayed on "city" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |

#    Then "<Province>" should be displayed on "province" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    Then "<Code>" should be displayed on "code" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    Then "<Ownership>" should be displayed on "ownership" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |


    And I click "next_button" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "source_of_funds" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click on xpath containing "<SourceOfFundsList>" on customerRegistration
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I click "cancel_button" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "source_of_wealth" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click on xpath containing "<SourceOfWealthList>" on customerRegistration
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I click "cancel_button" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "update_button" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "Settings updated successfully" should be displayed on "update_settings" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    And I click "ok_button" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    Examples:
      | TestCaseId_and_TestDataRowIndex | keyword    |Surname|All_Names|Preferred_Name|Tittle|SA_ID_No|Nationality|Email|Street_Adreess|City|Province|Code|Ownership|SourceOfFundsList|SourceOfWealthList|
      | 1                               | BDD        |Mahlalela|Philile Portia|Philile      |  Ms    |9402131035080|South Africa|ppmahlalela@gmail.com|906 Box Fish Street|Kaalfontein, Midrand|Gauteng|1632|I'm Renting|Allowance|Allowance|