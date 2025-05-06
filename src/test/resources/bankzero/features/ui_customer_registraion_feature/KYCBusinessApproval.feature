@BusinessRegistration  @web_application

Feature: KYC Approval On BOSS High Risk

  @Approve_As_CDD_BasicPart
  Scenario Outline: Approve KYC Documents
    Given I have test data from "business_registration/businessRegistrationKYCData.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "business_registration/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |
    And I a "desktop" "BROWSER" opened

    And A browser is opened with "backOffice" website url
      | Take_Screenshot |
      | No              |
    And I refresh page

    And I enter a value on "Username" text box
      | Take_Screenshot |
      | Yes             |
    And I enter a value on "Password" text box
      | Take_Screenshot |
      | Yes             |
    And I click "Login Button" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Navbar Dropdown" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CDD Business" web page element
      | Take_Screenshot |
      | No              |

    And I wait for "NoDataFound" web page element to disappear
      | Take_Screenshot |
      | No              |

    And I click "Enter search key" web page element website
      | Take_Screenshot |
      | No              |

    And I enter a value on "CustomerName" text box
      | Take_Screenshot |
      | Yes             |
    And I force click "Claim" web page element
      | Take_Screenshot |
      | No              |
    And I force click "All Task" web page element
      | Take_Screenshot |
      | No              |
    And I force click "AssignedToMe" web page element
      | Take_Screenshot |
      | Yes             |

    #And I wait


    And I clear and write on "CustomerName" text box
      | Take_Screenshot |
      | Yes             |
    And I pressEnter "CustomerName" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Check Box" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Select" web page element
      | Take_Screenshot |
      | No              |
    And I force click "documentForBasicBusinessBtn" web page element
      | Take_Screenshot |
      | No              |
    And I wait

    And I force click "acceptDocumentBtn" web page element
      | Take_Screenshot |
      | No              |
    And I force click "closeBtn" web page element
      | Take_Screenshot |
      | No              |

    And I scroll into view "searchBtn" web page element

    And I clickAndHold "searchBtn" web page element
      | Take_Screenshot |
      | Yes             |

    And I force click "searchBtn" web page element
      | Take_Screenshot |
      | No              |
    And I click "closeSearchBtn" web page element
      | Take_Screenshot |
      | Yes              |
    And I force click "routeForApprovalbtn" web page element
      | Take_Screenshot |
      | No              |

    And I enter a value on "ReasonToRouteApproval" text box
      | Take_Screenshot |
      | Yes              |

    And I clickAndHold "Route-KYC" web page element
      | Take_Screenshot |
      | Yes             |

    And I force click "Route-KYC" web page element
      | Take_Screenshot |
      | No              |

  And  I wait

    And I force click "logOut" web page element
      | Take_Screenshot |
      | No              |

    And I enter a value on "UsernameTl" text box
      | Take_Screenshot |
      | Yes             |

    And I enter a value on "Password" text box
      | Take_Screenshot |
      | Yes             |

    And I click "Login Button" web page element
      | Take_Screenshot |
      | No              |

    And I force click "Navbar Dropdown" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CDD Business" web page element
      | Take_Screenshot |
      | No              |

    And I wait for "NoDataFound" web page element to disappear
      | Take_Screenshot |
      | No              |


    And I click "Enter search key" web page element website
      | Take_Screenshot |
      | No              |

    And I enter a value on "CustomerName" text box
      | Take_Screenshot |
      | Yes             |

    And I force click "Claim" web page element
      | Take_Screenshot |
      | No              |

    And I force click "All Task" web page element
      | Take_Screenshot |
      | No              |
    And I force click "AssignedToMe" web page element
      | Take_Screenshot |
      | Yes             |

    And I wait

    And I clear and write on "CustomerName" text box
      | Take_Screenshot |
      | Yes             |
    And I pressEnter "CustomerName" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Check Box" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Select" web page element
      | Take_Screenshot |
      | No              |
    And I force click "ViewBtn" web page element
      | Take_Screenshot |
      | No              |
    And I force click "expandTitle" web page element
      | Take_Screenshot |
      | No              |

    And I force click "falsePositiveAll" web page element
      | Take_Screenshot |
      | No              |

    And I enter a value on "commentTextboxTl" text box
      | Take_Screenshot |
      | Yes             |

    And I force click "FALSE_POSITIVE" web page element
      | Take_Screenshot |
      | No              |

    And I wait

    And I force click "closeBtn" web page element
      | Take_Screenshot |
      | No              |

    And I force click "CalculateFinalRiskRating" web page element
      | Take_Screenshot |
      | Yes             |

    And I wait

    And I scroll into view "searchBtn" web page element

    And I clickAndHold "searchBtn" web page element
      | Take_Screenshot |
      | Yes             |

    And I force click "searchBtn" web page element
      | Take_Screenshot |
      | No              |
    And I click "closeSearchBtn" web page element
      | Take_Screenshot |
      | Yes              |
    And I click "ApproveKYCBtn" web page element
      | Take_Screenshot |
      | Yes             |

    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 1                               |

  @TeamLeadApproval
  Scenario Outline: Approve KYC Documents for Team Lead
    Given I have test data from "business_registration/businessRegistrationKYCData.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "business_registration/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |
    And I a "desktop" "BROWSER" opened

    And A browser is opened with "backOffice" website url
      | Take_Screenshot |
      | No              |
    And I refresh page

    And I enter a value on "UsernameTl" text box
      | Take_Screenshot |
      | Yes             |

    And I enter a value on "Password" text box
      | Take_Screenshot |
      | Yes             |

    And I click "Login Button" web page element
      | Take_Screenshot |
      | No              |

    And I force click "Navbar Dropdown" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CDD Business" web page element
      | Take_Screenshot |
      | No              |

    And I wait for "NoDataFound" web page element to disappear
      | Take_Screenshot |
      | No              |


    And I click "Enter search key2" web page element website
      | Take_Screenshot |
      | No              |

#    And I enter a value on "CustomerName" text box
#      | Take_Screenshot |
#      | Yes             |
#    And I force click "Claim" web page element
#      | Take_Screenshot |
#      | No              |
#    And I force click "All Task" web page element
#      | Take_Screenshot |
#      | No              |
#    And I force click "AssignedToMe" web page element
#      | Take_Screenshot |
#      | Yes             |
#
#    And I wait

    And I clear and write on "CustomerName" text box
      | Take_Screenshot |
      | Yes             |
    And I pressEnter "CustomerName" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Check Box" web page element
      | Take_Screenshot |
      | No              |
#    And I force click "Select" web page element
#      | Take_Screenshot |
#      | No              |
#    And I force click "ViewBtn" web page element
#      | Take_Screenshot |
#      | No              |
#    And I force click "expandTitle" web page element
#      | Take_Screenshot |
#      | No              |
#
#    And I force click "falsePositiveAll" web page element
#      | Take_Screenshot |
#      | No              |
#    And I enter a value on "commentTextboxTl" text box
#      | Take_Screenshot |
#      | Yes              |
#    And I force click "FALSE_POSITIVE" web page element
#      | Take_Screenshot |
#      | No              |
#
#    And I wait
#
#    And I force click "closeBtn" web page element
#      | Take_Screenshot |
#      | No              |

    And I force click "CalculateFinalRiskRating" web page element
      | Take_Screenshot |
      | Yes             |

    And I wait

    And I scroll into view "searchBtn" web page element

    And I clickAndHold "searchBtn" web page element
      | Take_Screenshot |
      | Yes             |

    And I force click "searchBtn" web page element
      | Take_Screenshot |
      | No              |
    And I click "closeSearchBtn" web page element
      | Take_Screenshot |
      | Yes              |
    And I click "ApproveKYCBtn" web page element
      | Take_Screenshot |
      | Yes             |



#    And I force click "documentForBasicBusinessBtn" web page element
#      | Take_Screenshot |
#      | No              |
#    And I wait
#
#    And I force click "acceptDocumentBtn" web page element
#      | Take_Screenshot |
#      | No              |
#    And I force click "closeBtn" web page element
#      | Take_Screenshot |
#      | No              |
#
#    And I scroll into view "searchBtn" web page element
#
#    And I clickAndHold "searchBtn" web page element
#      | Take_Screenshot |
#      | Yes             |
#
#    And I force click "searchBtn" web page element
#      | Take_Screenshot |
#      | No              |
#    And I click "closeSearchBtn" web page element
#      | Take_Screenshot |
#      | Yes              |
#    And I force click "routeForApprovalbtn" web page element
#      | Take_Screenshot |
#      | No              |
#
#    And I enter a value on "ReasonToRouteApproval" text box
#      | Take_Screenshot |
#      | Yes              |
#
#    And I clickAndHold "Route-KYC" web page element
#      | Take_Screenshot |
#      | Yes             |
#    And  I wait
#
#    And I force click "logOut" web page element
#      | Take_Screenshot |
#      | No              |
#
#    And I enter a value on "UsernameTl" text box
#      | Take_Screenshot |
#      | Yes             |
#
#    And I enter a value on "Password" text box
#      | Take_Screenshot |
#      | Yes             |
#
#    And I click "Login Button" web page element
#      | Take_Screenshot |
#      | No              |
#
#    And I force click "Navbar Dropdown" web page element
#      | Take_Screenshot |
#      | No              |
#    And I force click "CDD Business" web page element
#      | Take_Screenshot |
#      | No              |
#
#    And I wait for "NoDataFound" web page element to disappear
#      | Take_Screenshot |
#      | No              |
#
#    And I click "Enter search key" web page element website
#      | Take_Screenshot |
#      | No              |
#
#

    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 1                               |


  @Approve_As_CDD_Pty
  Scenario Outline: Approve KYC Documents PTY
    Given I have test data from "business_registration/businessRegistrationKYCData.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "business_registration/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |
    And I a "desktop" "BROWSER" opened

    And A browser is opened with "backOffice" website url
      | Take_Screenshot |
      | No              |
    And I refresh page

    And I enter a value on "Username" text box
      | Take_Screenshot |
      | Yes             |
    And I enter a value on "Password" text box
      | Take_Screenshot |
      | Yes             |
    And I click "Login Button" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Navbar Dropdown" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CDD Business" web page element
      | Take_Screenshot |
      | No              |

    And I wait for "NoDataFound" web page element to disappear
      | Take_Screenshot |
      | No              |

    And I click "Enter search key" web page element website
      | Take_Screenshot |
      | No              |
#
#    And I enter a value on "CustomerName" text box
#      | Take_Screenshot |
#      | Yes             |
#    And I force click "Claim" web page element
#      | Take_Screenshot |
#      | No              |
#    And I force click "All Task" web page element
#      | Take_Screenshot |
#      | No              |
#    And I force click "AssignedToMe" web page element
#      | Take_Screenshot |
#      | Yes             |
#
#    And I wait


    And I clear and write on "CustomerName" text box
      | Take_Screenshot |
      | Yes             |
    And I pressEnter "CustomerName" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Check Box" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Select" web page element
      | Take_Screenshot |
      | No              |
    And I force click "document1Btn" web page element
      | Take_Screenshot |
      | No              |
    And I wait

    And I force click "acceptDocumentBtn" web page element
      | Take_Screenshot |
      | No              |
    And I force click "closeBtn" web page element
      | Take_Screenshot |
      | No              |
    #And I wait
    And I force click "document2Btn" web page element
      | Take_Screenshot |
      | No              |
    And I wait

    And I force click "acceptDocumentBtn" web page element
      | Take_Screenshot |
      | No              |
    And I force click "closeBtn" web page element
      | Take_Screenshot |
      | No              |

    And I scroll into view "document3Btn" web page element

    And I force click "document3Btn" web page element
      | Take_Screenshot |
      | No              |
    And I wait

    And I force click "acceptDocumentBtn" web page element
      | Take_Screenshot |
      | No              |
    And I force click "closeBtn" web page element
      | Take_Screenshot |
      | No              |



    And I clickAndHold "searchBtn" web page element
      | Take_Screenshot |
      | Yes             |

    And I force click "searchBtn" web page element
      | Take_Screenshot |
      | No              |
    And I click "closeSearchBtn" web page element
      | Take_Screenshot |
      | Yes              |
    And I force click "routeForApprovalbtn" web page element
      | Take_Screenshot |
      | No              |

    And I enter a value on "ReasonToRouteApproval" text box
      | Take_Screenshot |
      | Yes              |

    And I clickAndHold "Route-KYC" web page element
      | Take_Screenshot |
      | Yes             |

    And I force click "Route-KYC" web page element
      | Take_Screenshot |
      | No              |

    And  I wait

    And I force click "logOut" web page element
      | Take_Screenshot |
      | No              |

    And I enter a value on "UsernameTl" text box
      | Take_Screenshot |
      | Yes             |

    And I enter a value on "Password" text box
      | Take_Screenshot |
      | Yes             |

    And I click "Login Button" web page element
      | Take_Screenshot |
      | No              |

    And I force click "Navbar Dropdown" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CDD Business" web page element
      | Take_Screenshot |
      | No              |

    And I wait for "NoDataFound" web page element to disappear
      | Take_Screenshot |
      | No              |


    And I click "Enter search key2" web page element website
      | Take_Screenshot |
      | No              |

    And I enter a value on "CustomerName" text box
      | Take_Screenshot |
      | Yes             |

    And I force click "Claim" web page element
      | Take_Screenshot |
      | No              |

    And I force click "All Task" web page element
      | Take_Screenshot |
      | No              |
    And I force click "AssignedToMe" web page element
      | Take_Screenshot |
      | Yes             |

    And I wait

    And I clear and write on "CustomerName" text box
      | Take_Screenshot |
      | Yes             |
    And I pressEnter "CustomerName" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Check Box" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Select" web page element
      | Take_Screenshot |
      | No              |
#    And I force click "ViewBtn" web page element
#      | Take_Screenshot |
#      | No              |
#    And I force click "expandTitle" web page element
#      | Take_Screenshot |
#      | No              |
#
#    And I force click "falsePositiveAll" web page element
#      | Take_Screenshot |
#      | No              |
#
#    And I enter a value on "commentTextboxTl" text box
#      | Take_Screenshot |
#      | Yes             |
#
#    And I force click "FALSE_POSITIVE" web page element
#      | Take_Screenshot |
#      | No              |
#
#    And I wait
#
#    And I force click "closeBtn" web page element
#      | Take_Screenshot |
#      | No              |
#
#    And I force click "CalculateFinalRiskRating" web page element
#      | Take_Screenshot |
#      | Yes             |
#
#    And I wait
#
#    And I scroll into view "searchBtn" web page element
#
#    And I clickAndHold "searchBtn" web page element
#      | Take_Screenshot |
#      | Yes             |
#
#    And I force click "searchBtn" web page element
#      | Take_Screenshot |
#      | No              |
#    And I click "closeSearchBtn" web page element
#      | Take_Screenshot |
#      | Yes              |
#    And I click "ApproveKYCBtn" web page element
#      | Take_Screenshot |
#      | Yes             |

    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 1                               |