@NewBusiness  @web_application

Feature: Business Registration
  @Business_Registration_Sole_Owner
  Scenario Outline:Registering A Sole Owner Business

    Given I have test data from "business_registration/businessRegistrationSoleOwner_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "business_registration/webdriver_element_list.csv"
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
      | Yes             | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "ProfileKay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "PlusSign" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "NewBusiness" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "SoleOwner" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "TradingAs" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    #And I enter a value on "RegisteredName" text box
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes             | ANDROID                          |

    #And I enter a value on "RegistrationNo" text box
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes             | ANDROID                          |

    And I click "SICGroup" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    When I scroll using xpath containing "<SIC Group>"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "SICIndustry" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    When I scroll using xpath containing "<SIC Industry>"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "TaxNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "VatNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SourceOfFunds" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "businessProceeds" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "okBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "SourceOfWealth" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "interest" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "okBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "NotifyEmail" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "selectFromAcoount" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "Kay" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "nextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "registeredOwnership" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click on xpath containing "<Ownership>"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "registeredAddress" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click on xpath containing "<AddressType>"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "estateName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "StreetNameAndNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Suburb/City" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    #And I click "selectProvince" web page element
      #| Take_Screenshot | Element_Locator_Application_Type |
      #| No              | ANDROID                          |

    #And I click on xpath containing "<Province>"
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes             | ANDROID                          |

    #And I enter a value on "PostalCode" text box
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes             | ANDROID                          |

    #And I click "unmarkCheckBox" web page element
      #| Take_Screenshot | Element_Locator_Application_Type |
      #| No              | ANDROID                          |

    #And I click "tradingAddressType" web page element
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| No              | ANDROID                          |

    #And I click on xpath containing "<TradingAddressType>"
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes             | ANDROID                          |



    And I click "addressNextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "selectCardOption" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "dontWantCard" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "nextBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    #And I click "addOwnerPlusSign" web page element
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| No              | ANDROID                          |

    #And I enter a value on "OwnerPreferedName" text box
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes             | ANDROID                          |

    #And I click "Authoriser" web page element
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes              | ANDROID                          |

    #And I click "MandatedOfficial" web page element
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes              | ANDROID                          |

    #And I click "Member" web page element
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes              | ANDROID                          |

    #And I click "NationalityDropdown" web page element
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes              | ANDROID                          |

    #And I scroll using xpath containing "<Nationality>"
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes              | ANDROID                          |

    #And I enter a value on "OwnerCellNo" text box
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes             | ANDROID                          |

    #And I click "addBtn" web page element
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes              | ANDROID                          |

    #And I click "nextBtn" web page element
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes              | ANDROID                          |

    And I click "iAgreeCheckBox" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "confirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    Then "Account created Success" should be displayed on "accountStatus" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    #Then "<TradingName>" should be displayed on "entityName" web page element
     # | Take_Screenshot | Element_Locator_Application_Type |
      #| Yes              | ANDROID                          |

    Then "<RegisteredName>" should be displayed on "businessName" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    Then "Sole Owner" should be displayed on "businessType" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    Then "<SIC Industry>" should be displayed on "Industry" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    Then "<Ownership>" should be displayed on "ownership" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    Then "Business check account" should be displayed on "accountType" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    Then "888000" should be displayed on "branchCode" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "finishBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex | keyword    |SIC Group                                  |SIC Industry                          |Ownership    |AddressType|Province |Nationality|TradingAddressType|TradingName|RegisteredName|
      | 1                               | BDD        |Accommodation and food service activities  |Accommodation                         |Sub-lease    |Office      |Gauteng  |South Africa |Flat/Apartment/Townhouse|Lenovo |Lenovo|
      #| 1                               | BDD        |Administrative and support activities      |Employment activities                 |Sub-lease|Office|Limpopo|
      #| 1                               | BDD        |Education                                  |Education                             |Rented from a landlord|Farm|Free State|
      #| 1                               | BDD        |Manufacturing                              |Manufacture of  electrical equipment  |Sharing with others (co-habitant)|Office|Mpumalamga|
      #| 1                               | BDD        |Construction                               |Civil engineering                     |North West|
      #| 1                               | BDD        |Financial and insurance activities         |            |Government grants and subsidies |                |
      #| 1                               | BDD        |Account                                    |            |Management fees                 |                |
      #| 1                               | BDD        |Account                                    |            |Rental/leasing income           |                |
      #| 1                               | BDD        |Account                                    |            |Royalties and license fees      |                |
      #| 1                               | BDD        |Account                                    |            |Royalties and license fees      |                |
      #| 1                               | BDD        |Account                                    |            |Trading in financial instruments|                |
      #| 1                               | BDD        |Account                                    |            |Donations                       |                |