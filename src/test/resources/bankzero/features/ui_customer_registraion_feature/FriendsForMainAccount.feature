@Friend  @web_application

Feature:Adding a friend and deleting friend

  @User_Add_Registered_Friend
  Scenario Outline: <Test_Case_Description>

    Given I have test data from "friends/Friend_For_Main_Account_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "friends/webdriver_element_list.csv"
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

#    And I select "Profiles"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "friends" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "plusSign" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "friendName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "addButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "confirmButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "Status" should be displayed on "PassedMassage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "FinishBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 1                               |user invite  friend  |

  @User_Unfriend_friend
  Scenario Outline: <Test_Case_Description>

    Given I have test data from "friends/Friend_For_Main_Account_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "friends/webdriver_element_list.csv"
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

#    And I select "Profiles"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |

    And I select "TypeOfAccount" account
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "friends" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "FriendProfile" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "DeleteFriend" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "YesDelete" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      | 2                              |user delete friend    |
