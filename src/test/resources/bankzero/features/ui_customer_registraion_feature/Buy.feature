@Buy  @web_application

Feature: Buy

  @Add_Recipient_And_Buy_AIRTIME
  Scenario Outline: Add Recipient and Buy Airtime On <Test_Case_Description>

    Given I have test data from "buy/BuyAirtime.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "buy/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                           |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Buy" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                            |

    And I click "Airtime" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "ItemName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "SelectProvider" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "Provider"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "CellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "NotifyCellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "BuyItem" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

   Then "SuccessStatus" should be displayed on "Status" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    ##And I wait
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex | keyword    |Test_Case_Description|
      | 1                               | BDD        |   Vodacom           |
      | 2                               | BDD        |  Mtn                |
      | 3                               | BDD        |   Cell C            |
      | 4                               | BDD        |    Telkom           |


  @Buy_AIRTIME_ON_EXISTING_ITEM
  Scenario Outline: <Test_Case_Description>

    Given I have test data from "buy/BuyAirtime.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "buy/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Buy" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "SelectRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes           | ANDROID                          |

    When I scroll using xpath containing "ExistingRecipient"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "BuyItem" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I wait
    Then "SuccessStatus" should be displayed on "Status" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    Then I click "ExitButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex | Test_Case_Description|
      | 5                              |Buy Airtime on Existing Item|



  @Buy_Data_With_Vodacom_Cell_Number
  Scenario Outline: Test_Case_Description

    Given I have test data from "buy/BuyDataForVodacom.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "buy/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Buy" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                            |

    And I click "Data" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "ItemName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectProvider" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "Provider"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "SelectProduct" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "Product"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "CellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "NotifyCellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "BuyItem" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I wait
    Then "SuccessStatus" should be displayed on "Status" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    Then I click "ExitButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex | keyword    |Test_Case_Description|
      | 1                               | BDD        |Add Item And Buy Vodacom Data For 1.2GB (7 Day Data) product |
      | 2                               | BDD        |Add Item And Buy Vodacom Data For 100GB + 100GB LTE (30 Day LTE) |




  @Buy_Data_With_MTN_Cell_Number
  Scenario Outline: Add Item And Buy <Provider> Data For <Product> product

    Given I have test data from "buy/BuyDataForMTN.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "buy/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Buy" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "Data" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "ItemName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "SelectProvider" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    When I scroll using xpath containing "Provider"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "SelectProduct" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I scroll using xpath containing "Product"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "CellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "NotifyCellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "BuyItem" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I wait
    Then "SuccessStatus" should be displayed on "Status" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    Examples:
      | TestCaseId_and_TestDataRowIndex | keyword    |Provider|Product|
      | 1                               | BDD        |MTN|Monthly 1.2GB (30 Day Data) |
#      | 2                               | BDD        |MTN| Monthly 12GB+12GB (30 Day Data)|
#      | 3                               | BDD        |MTN|Monthly 2.5GB+2.5GB (30 Day Data)|
#      | 5                               | BDD        |MTN|Monthly 220MB (30 Day Data)|
#      | 6                               | BDD        |MTN| Monthly 3.5GB+3.5GB (30 Day Data)|
#      | 7                               | BDD        |MTN|Monthly 5.5GB+5.5GB (30 Day Data)|
#      | 8                               | BDD        |MTN|Monthly Whatsapp 1.2GB (30 Day Social) |
#      | 9                               | BDD        |MTN|Monthly Whatsapp 2GB (30 Day Social)|
#      | 10                               | BDD        |MTN|On-Net 1050Min (7 Day On-Net)|
#      | 11                               | BDD        |MTN|On-Net 280Min (30 Day On-Net)|
#      | 12                               | BDD        |MTN|On-Net 350Min (30 Day On-Net)|
#      | 13                               | BDD        |MTN|On-Net 55Min (Daily On-Net)|
#      | 14                               | BDD        |MTN|On-Net 900Min (30 Day On-Net)|
#      | 15                               | BDD        |MTN| Rush Hour 150MB (Hourly Data)|
#     | 16                               | BDD        |MTN|Rush Hour 35MB (Hourly Data)|
#      | 17                               | BDD        |MTN|Rush Hour 500MB (Hourly Data)|
#     | 18                               | BDD        |MTN|Weekly 1.2GB (7 Day Data)|
#      | 19                               | BDD        |MTN| Weekly 150MB (7 Day Data)|
#      | 20                               | BDD        |MTN|Weekly 2.5GB (7 Day Data)|
#     | 21                               | BDD        |MTN|Weekly 250MB (7 Day Data)|
#      | 22                               | BDD        |MTN| Weekly 6GB (7 Day Data)|
#     | 23                               | BDD        |MTN|Weekly 80MB (7 Day Data)|
#      | 24                               | BDD        |MTN| Weekly Whatsapp 1GB (7 Day Social) |
#      | 25                               | BDD        |MTN|Weekly Whatsapp 300MB (7 Day Social)|
#      | 26                               | BDD        |MTN|Whatsapp 1GB (3 Day Social)|
#      | 27                               | BDD        |MTN|1.5GB (30 Day Data)|
#      | 28                               | BDD        |MTN|120MB (30 Day Data)|
#      | 29                               | BDD        |MTN|1GB (30 Day Data)|
#      | 30                               | BDD        |MTN|1GB (Everyday Daily)|
#      | 31                               | BDD        |MTN| 1GB Everyday (Everyday Monthly)|
#      | 32                               | BDD        |MTN|1GB Everyday (Everyday Weekly)|
#      | 33                               | BDD        |MTN|1GB Rush Hour (Hourly Data)|
#     | 34                               | BDD        |MTN|200GB Super Data (30 Day Data)|
#      | 35                               | BDD        |MTN|200MB Facebook (Daily Social)|
#      | 36                               | BDD        |MTN|20Day Whatsapp 1GB (20 Day Social)|
#      | 37                               | BDD        |MTN|20GB+20GB (30 Day Data)|
#      | 38                               | BDD        |MTN|2GB (Everyday Daily)|
#      | 39                               | BDD        |MTN|2GB Everyday (Everyday Monthly)|
#      | 40                               | BDD        |MTN|30GB Super Data (30 Day Data)|
#      | 41                               | BDD        |MTN|3Day 1.5GB (3 Day Data)|
#     | 42                               | BDD        |MTN|3Day Whatsapp 150MB (3 Day Social)|
#      | 43                               | BDD        |MTN|500MB (Everyday Monthly)|
#      | 44                               | BDD        |MTN|500MB (Everyday Weekly)|
#      | 45                               | BDD        |MTN|70GB Super Data (30 Day Data)|
#      | 46                               | BDD        |MTN|All-Net 600Min (7 Day All-Net)|
#      | 47                               | BDD        |MTN|All-net 10Min (Daily All-Net)|
#      | 48                               | BDD        |MTN|All-net 120Min (Daily All-Net)|
#      | 49                               | BDD        |MTN|All-net 30Min (Daily All-Net)|
#      | 50                               | BDD        |MTN|All-net 5Min (Daily All-Net)|
#       | 51                               | BDD        |MTN|All-net 60Min (Daily All-Net)|
#       | 52                               | BDD        |MTN|All-net 70Min (7 Day All-Net)|
#      | 53                               | BDD        |MTN|Daily 1.5GB (Daily Data)|
#       | 54                               | BDD        |MTN|Daily 100MB (Daily Data)|
#      | 55                               | BDD        |MTN|Daily 250MB (Daily Data)|
#       | 56                               | BDD        |MTN|Daily 35MB (Daily Data)|
#       | 57                               | BDD        |MTN|Daily Whatsapp 250MB (Daily Social)|
#       | 58                               | BDD        |MTN|Daily Whatsapp 50MB (Daily Social)|
#      | 59                               | BDD        |MTN|Facebook 300MB (7 Day Social)|

  @Buy_Data_With_Cell_C_Cell_Number
  Scenario Outline: Add Item And Buy <Provider> Data For <Product> product

    Given I have test data from "buy/BuyDataForCellC.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "buy/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Buy" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |
    And I click "Data" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "ItemName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "SelectProvider" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "Provider"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "SelectProduct" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I scroll using xpath containing "Product"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "CellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "NotifyCellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "BuyItem" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I wait
    Then "SuccessStatus" should be displayed on "Status" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex | keyword    |Provider|Product|
      | 1                               | BDD        |Cell C|1.5GB (30 Day Data) |
#      | 2                               | BDD        |Cell C| 100GB (365 Day Data)|
#      | 3                               | BDD        |Cell C|100GB + 100GB (180 Day Data)|
#      | 5                               | BDD        |Cell C|100MB (30 Day Data)|
#      | 6                               | BDD        |Cell C| 10GB (365 Day Data)|
#      | 7                               | BDD        |Cell C|10GB 30 Days (30 Day AllinOne)|
#      | 8                               | BDD        |Cell C|10GB Data Bundle (30 Day Data) |
#      | 9                               | BDD        |Cell C|10GB+10GB Flexi (HomeConnecta)|
#      | 10                               | BDD        |Cell C|10GB+10GB Integrated (HomeConnectaIntegrated)|
#      | 11                               | BDD        |Cell C|120MB 14 Day (30 Day AllinOne)|
#      | 12                               | BDD        |Cell C|150MB (30 Day Data)|
#      | 13                               | BDD        |Cell C|150MB (7 Day Data)|
#      | 14                               | BDD        |Cell C|150MB (Daily Data)|
#      | 15                               | BDD        |Cell C| 15GB Day by Day (30 Day Day by Day)|
#      | 16                               | BDD        |Cell C|1GB (30 Day Data)|
#      | 17                               | BDD        |Cell C|1GB (7 Day Data)|
#      | 18                               | BDD        |Cell C|1GB (Daily Data)|
#      | 19                               | BDD        |Cell C| 1GB 30 Day (30 Day AllinOne)|
#      | 20                               | BDD        |Cell C|1GB 30 Day (30 Day WhatsApp)|
#      | 21                               | BDD        |Cell C|2.5GB 30 Day (30 Day AllinOne)|
#      | 22                               | BDD        |Cell C| 200GB (365 Day Data)|
#      | 23                               | BDD        |Cell C|200GB + 200GB (180 Day Data)|
#      | 24                               | BDD        |Cell C| 20GB (365 Day Data) |
#      | 25                               | BDD        |Cell C|20GB 30 Days (30 Day AllinOne)|
#      | 26                               | BDD        |Cell C|25GB+25GB Flexi (HomeConnecta)|
#      | 27                               | BDD        |Cell C|2GB (30 Day Data)|
#      | 28                               | BDD        |Cell C|2GB (7 Day Data)|
#      | 29                               | BDD        |Cell C|2GB (Daily Data)|
#      | 30                               | BDD        |Cell C|2GB+2GB Flexi (HomeConnecta)|
#      | 31                               | BDD        |Cell C| 2GB+2GB Integrated (HomeConnectaIntegrated)|
#      | 32                               | BDD        |Cell C|300MB (Daily Data)|
#      | 33                               | BDD        |Cell C|300MB 14 Day (30 Day AllinOne)|
#     | 34                               | BDD        |Cell C|300MB 3 Day (30 Day WhatsApp)|
#      | 35                               | BDD        |Cell C|30GB (365 Day Data)|
#      | 36                               | BDD        |Cell C|30GB Day by Day (30 Day Day by Day)|
#      | 37                               | BDD        |Cell C|30MB (Daily Data)|
#      | 38                               | BDD        |Cell C|30MB 1 Day (30 Day AllinOne)|
#      | 39                               | BDD        |Cell C|350MB (30 Day Data)|
#      | 40                               | BDD        |Cell C|3GB (30 Day Data)|
#      | 41                               | BDD        |Cell C|40GB (30 Day Data)|
#      | 42                               | BDD        |Cell C|40GB+40GB Flexi (HomeConnecta)|
#      | 43                               | BDD        |Cell C|450MB 30 Days (30 Day AllinOne)|
#      | 44                               | BDD        |Cell C|4GB (30 Day Data)|
#      | 45                               | BDD        |Cell C|500MB (7 Day Data)|
#      | 46                               | BDD        |Cell C|500MB 7 Days (7 Day WhatsApp)|
#      | 47                               | BDD        |Cell C|50GB (365 Day Data)|
#      | 48                               | BDD        |Cell C|50GB + 50GB (180 Day Data)|
#      | 49                               | BDD        |Cell C|5GB 30 Days (30 Day AllinOne)|
#      | 50                               | BDD        |Cell C|5GB+5GB Integrated (HomeConnectaIntegrated)|
#       | 51                               | BDD        |Cell C|600MB (30 Day Data)|
#       | 52                               | BDD        |Cell C|600MB (Daily Data)|
#       | 53                               | BDD        |Cell C|600MB 14 Day (14 Day WhatsApp)|
#       | 54                               | BDD        |Cell C|6GB (30 Day Data)|
#      | 55                               | BDD        |Cell C|6GB+6GB Flexi (HomeConnecta)|
#       | 56                               | BDD        |Cell C|7.5GB Day by Day 250MB Daily 30 Day (30 Day Day by Day)|
#       | 57                               | BDD        |Cell C|7GB Day by Day 1GB Daily (7 Day Day by Day)|
#       | 58                               | BDD        |Cell C|80MB (Daily Data)|
#       | 59                               | BDD        |Cell C|All-in-One Plus 150MB 1 Day (1 Day All-In-One+)|
#       | 60                               | BDD        |Cell C|All-in-One Plus 1GB 30 Days (30 Day All-In-One+)|
#      | 61                               | BDD        |Cell C|All-in-One Plus 1GB 7 Days (7 Day All-In-One+)|
#      | 62                               | BDD        |Cell C|All-in-One Plus 2GB 30 Days (30 Day All-In-One+)|
#      | 63                               | BDD        |Cell C|All-in-One Plus 300MB 7 Days (7 Day All-In-One+)|
#      | 64                               | BDD        |Cell C|All-in-One Plus 3GB 30 Days (30 Day All-In-One+)|
#      | 65                               | BDD        |Cell C|All-in-One Plus 3GB 7 Days (7 Day All-In-One+)|
#      | 66                               | BDD        |Cell C|All-in-One Plus 460MB 1 Day (1 Day All-In-One+)|
#      | 67                               | BDD        |Cell C|All-in-One Plus 6GB 7 Days (7 Day All-In-One+)|
#      | 68                               | BDD        |Cell C|All-in-One Plus 90MB 1 Day (1 Day All-In-One+)|
#      | 69                               | BDD        |Cell C|Call 10 (Daily Any-net Voice)|
#      | 60                               | BDD        |Cell C|Call 100 (7 Day Any-net Voice)|
#      | 71                               | BDD        |Cell C|Call 100 (Daily Any-net Voice)|
#      | 72                               | BDD        |Cell C|Call 1000 (30 Day Any-net Voice)|
#      | 73                               | BDD        |Cell C|Call 15 (7 Day Any-net Voice)|
#      | 74                               | BDD        |Cell C|Call 150 (7 Day Any-net Voice)|
#      | 75                               | BDD        |Cell C|Call 20 (Daily Any-net Voice)|
#      | 76                               | BDD        |Cell C|Call 200 (7 Day Any-net Voice)|
#      | 77                               | BDD        |Cell C|Call 240 (30 Day Any-net Voice)|
#      | 78                               | BDD        |Cell C|Call 30 (30 Day Any-net Voice)|
#      | 79                               | BDD        |Cell C|Call 35 (7 Day Any-net Voice)|
#      | 80                               | BDD        |Cell C|Call 400 (30 Day Any-net Voice)|
#      | 81                               | BDD        |Cell C|Call 50 (7 Day Any-net Voice)|
#      | 82                               | BDD        |Cell C|Call 500 (7 Day Any-net Voice)|
#      | 83                               | BDD        |Cell C|Call 60 (Daily Any-net Voice)|
#      | 84                               | BDD        |Cell C|Call 90 (30 Day Any-net Voice)|
#      | 85                               | BDD        |Cell C|Infinity Prepaid (30 Day Data)|

  @Buy_Data_With_Telkom_Cell_Number
  Scenario Outline: Add Item And Buy "<Provider>" Data For "<Product>" product

    Given I have test data from "buy/BuyDataForTelkom.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "buy/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Buy" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |
    And I click "Data" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "ItemName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectProvider" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "Provider"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectProduct" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Product"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "CellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "NotifyCellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "BuyItem" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    Examples:
      | TestCaseId_and_TestDataRowIndex | keyword    |Provider|Product|
      | 1                               | BDD        |Telkom|All Net 1.5GB + 1.5GB (30 Day Data) |
#      | 2                               | BDD        |Telkom| 100MB (7 Day Data)|
#      | 3                               | BDD        |Telkom|100MB (Weekend Data)|
#      | 5                               | BDD        |Telkom|150MB (Daily Data)|
#      | 6                               | BDD        |Telkom| 150MB (Hourly Data)|
#      | 7                               | BDD        |Telkom|1GB (7 Day Data)|
#      | 8                               | BDD        |Telkom|1GB (Weekend Data)|
#      | 9                               | BDD        |Telkom|200MB (Weekend Data)|
#      | 10                               | BDD        |Telkom|250MB (3 Hour Data)|
#      | 11                               | BDD        |Telkom|250MB (7 Day Data)|
#      | 12                               | BDD        |Telkom|300MB (Daily Data)|
#      | 13                               | BDD        |Telkom|300MB (Hourly Data)|
#      | 14                               | BDD        |Telkom|30MB (Daily Data)|
#      | 15                               | BDD        |Telkom| 3GB Anytime + 3GB Night Surfer (30 Day Data)|
#      | 16                               | BDD        |Telkom|400MB (3 Hour Data)|
#      | 17                               | BDD        |Telkom|500MB (12 Hour Data)|
#      | 18                               | BDD        |Telkom|500MB (7 Day Data)|
#      | 19                               | BDD        |Telkom| 50MB (7 Day Data)|
#      | 20                               | BDD        |Telkom|512MB (Weekend Data)|
#      | 21                               | BDD        |Telkom|75MB (Hourly Data)|
#      | 22                               | BDD        |Telkom| All Net 1.5GB + 1.5GB (30 Day Data)|
#      | 23                               | BDD        |Telkom|All Net 100GB (30 Day Data)|
#      | 24                               | BDD        |Telkom| All Net 10GB + 10GB (30 Day Data)|
#      | 25                               | BDD        |Telkom|All Net 150MB + 150MB (30 Day Data)|
#      | 26                               | BDD        |Telkom|All Net 1GB + 1GB (30 Day Data)|
#      | 27                               | BDD        |Telkom|All Net 20GB (30 Day Data)|
#      | 28                               | BDD        |Telkom|All Net 2GB + 2GB (30 Day Data)|
#      | 29                               | BDD        |Telkom|All Net 300MB + 300MB (30 Day Data)|
#      | 30                               | BDD        |Telkom|All Net 35MB + 35MB (30 Day Data)|
#      | 31                               | BDD        |Telkom| All Net 3GB + 3GB (30 Day Data)|
#      | 32                               | BDD        |Telkom|All Net 500MB + 500MB (30 Day Data)|
#      | 33                               | BDD        |Telkom|All Net 50GB (30 Day Data)|
#     | 34                               | BDD        |Telkom|All Net 5GB + 5GB (30 Day Data)|
#      | 35                               | BDD        |Telkom|All Net 75MB + 75MB (30 Day Data)|
#      | 36                               | BDD        |Telkom|All-Net Voice 1000 Minutes (30 Day Voice)|
#      | 37                               | BDD        |Telkom|Daily 2GB (Daily Data)|
#      | 38                               | BDD        |Telkom|Daily Chat 100MB (Daily Data)|
#      | 39                               | BDD        |Telkom|Daily Chat 250MB (Daily Data)|
#      | 40                               | BDD        |Telkom|Daily Chat 500MB (Daily Data)|
#      | 41                               | BDD        |Telkom|Daily Chat 50MB (Daily Data)|
#      | 42                               | BDD        |Telkom|FreeMe 1.2GB (61 Day Data)|
#      | 43                               | BDD        |Telkom|FreeMe 1.8GB (61 Day Data)|
#      | 44                               | BDD        |Telkom|FreeMe 11.5GB (61 Day Data)|
#      | 45                               | BDD        |Telkom|FreeMe 200MB (14 Day Data)|
#      | 46                               | BDD        |Telkom|FreeMe 28GB (61 Day Data)|
#      | 47                               | BDD        |Telkom|FreeMe 3.5GB (61 Day Data)|
#      | 48                               | BDD        |Telkom|FreeMe 300MB (14 Day Data)|
#      | 49                               | BDD        |Telkom|FreeMe 6.5GB (61 Day Data)|
#      | 50                               | BDD        |Telkom|FreeMe 600MB (14 Day Data)|
#       | 51                               | BDD        |Telkom|LTE 100GB Night Surfer (31 Day Data)|
#       | 52                               | BDD        |Telkom|LTE 10GB + 10GB (31 Day Data)|
#       | 53                               | BDD        |Telkom|LTE 120GB + 120GB (61 Day Data)|
#       | 54                               | BDD        |Telkom|LTE 15GB + 15GB (61 Day Data)|
#      | 55                               | BDD        |Telkom|LTE 20GB + 20GB (61 Day Data)|
#       | 56                               | BDD        |Telkom|LTE 220GB + 220GB (61 Day Data)|
#       | 57                               | BDD        |Telkom|LTE 25GB + 25GB (61 Day Data)|
#       | 58                               | BDD        |Telkom|LTE 3GB + 3GB (14 Day Data)|
#       | 59                               | BDD        |Telkom|LTE 40GB + 40GB (61 Day Data)|
#       | 60                               | BDD        |Telkom|LTE 60GB + 60GB (61 Day Data)|
#      | 61                               | BDD        |Telkom|LTE 7.5GB + 7.5GB (31 Day Data)|
#      | 62                               | BDD        |Telkom|LTE 80GB + 80GB (61 Day Data)|
#      | 63                               | BDD        |Telkom|LTE Unlimited All Hours (31 Day Data)|
#      | 64                               | BDD        |Telkom|LTE Unlimited Off-Peak (31 Day Data)|
#      | 65                               | BDD        |Telkom|Monthly Chat 1GB (30 Day Data)|
#      | 66                               | BDD        |Telkom|Monthly Chat 1GB Recurring (30 Day Data)|
#      | 67                               | BDD        |Telkom|Monthly Chat 250MB (30 Day Data)|
#      | 68                               | BDD        |Telkom|Monthly Chat 250MB Recurring (30 Day Data)|
#      | 69                               | BDD        |Telkom|Monthly Chat 2GB (30 Day Data)|
#      | 60                               | BDD        |Telkom|Monthly Chat 2GB Recurring (30 Day Data)|
#      | 71                               | BDD        |Telkom|Monthly Chat 500MB (30 Day Data)|
#      | 72                               | BDD        |Telkom|Monthly Chat 500MB Recurring (30 Day Data)|
#      | 73                               | BDD        |Telkom|On the Go 10GB (61 Day Data)|
#      | 74                               | BDD        |Telkom|On the Go 5GB (61 Day Data)|
#      | 75                               | BDD        |Telkom|Social 100MB (30 Day Data)|
#       | 76                               | BDD        |Telkom|Social 100MB (7 Day Data)|
#       | 77                               | BDD        |Telkom|Social 100MB (Daily Data)|
#       | 78                               | BDD        |Telkom|Social 1GB (30 Day Data)|
#       | 79                               | BDD        |Telkom|Social 1GB (7 Day Data)|
#       | 80                               | BDD        |Telkom|Social 250MB (30 Day Data)|
#       | 81                               | BDD        |Telkom|Social 250MB (7 Day Data)|
#       | 82                               | BDD        |Telkom|Social 250MB (Daily Data)|
#       | 83                               | BDD        |Telkom|Social 25MB (Daily Data)|
#       | 84                               | BDD        |Telkom|Social 2GB (30 Day Data)|
#       | 85                              | BDD        |Telkom|Social 2GB (7 Day Data)|
#      | 86                               | BDD        |Telkom|Social 3GB (30 Day Data)|
#      | 87                               | BDD        |Telkom|Social 500MB (30 Day Data)|
#      | 88                               | BDD        |Telkom|Social 500MB (7 Day Data)|
#      | 89                               | BDD        |Telkom|Social 500MB (Daily Data)|
#      | 90                               | BDD        |Telkom|Social 50MB (Daily Data)|
#      | 91                               | BDD        |Telkom|Social 75MB (7 Day Data)|
#      | 92                               | BDD        |Telkom|Social 75MB (Daily Data)|
#      | 93                               | BDD        |Telkom|TikTok 150MB (Daily TikTok)|
#      | 94                               | BDD        |Telkom|TikTok 1GB (30 Day TikTok)|
#      | 95                               | BDD        |Telkom|TikTok 250MB (Weekend TikTok)|
#       | 96                               | BDD        |Telkom|TikTok 300MB (7 Day TikTok)|
#       | 97                               | BDD        |Telkom|TikTok 300MB (Daily TikTok)|
#       | 98                               | BDD        |Telkom|TikTok 500MB (Weekend TikTok)|
#       | 99                               | BDD        |Telkom|TikTok 600MB (7 Day TikTok)|
#       | 100                               | BDD        |Telkom|Weekly Chat 100MB (7 Day Data)|
#       | 101                               | BDD        |Telkom|Weekly Chat 1GB (7 Day Data)|
#       | 102                               | BDD        |Telkom|Weekly Chat 250MB (7 Day Data)|
#       | 103                               | BDD        |Telkom|Weekly Chat 500MB (7 Day Data)|
#       | 104                               | BDD        |Telkom|WhatsApp 1.5GB (30 Day Data)|
#       | 105                               | BDD        |Telkom|WhatsApp 150MB (Daily Data)|
#       | 106                              | BDD        |Telkom|WhatsApp 300MB (7 Day Data)|
#       | 107                              | BDD        |Telkom|WhatsApp 300MB (Daily Data)|
#       | 108                              | BDD        |Telkom|WhatsApp 750MB (30 Day Data)|
#       | 109                              | BDD        |Telkom|WhatsApp 750MB (7 Day Data)|
#       | 110                              | BDD        |Telkom|WhatsApp Unlimited (30 Day Data)|
#       | 111                              | BDD        |Telkom|WhatsApp Unlimited (7 Day Data)|
#       | 112                              | BDD        |Telkom|WhatsApp Unlimited (Daily Data)|



  @Buy_SMS_On_Vodacom
  Scenario Outline: Add Item to Buy SMS On <Provider> For <Product>

    Given I have test data from "buy/BuySmsForVodacom.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "buy/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Buy" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                            |

    And I click "SMS" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "ItemName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectProvider" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "Provider"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SelectProduct" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "Product"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "CellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "NotifyCellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "BuyItem" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "SuccessStatus" should be displayed on "Status" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    Examples:
      | TestCaseId_and_TestDataRowIndex | keyword    |Provider|Product|
      | 1                               | BDD        |Vodacom|100 SMS |
     # | 2                               | BDD        |Vodacom| 1000 SMS|
    #  | 3                               | BDD        |Vodacom|1500 SMS|
     # | 5                               | BDD        |Vodacom|20 SMS|
     # | 6                               | BDD        |Vodacom| 200 SMS|
     # | 7                              | BDD        |Vodacom|2000 SMS|
     # | 8                               | BDD        |Vodacom| 300 SMS |
     # | 9                               | BDD        |Vodacom|300 SMS|
     # | 10                               | BDD        |Vodacom|500 SMS|

  @Buy_SMS_On_CellC
  Scenario Outline: Add Item to Buy SMS On <Provider> For <Product>

    Given I have test data from "buy/BuySmsForCellC.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "buy/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Buy" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |
    And I click "SMS" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "ItemName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "SelectProvider" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "Provider"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "SelectProduct" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "Product"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    And I enter a value on "CellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "NotifyCellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "BuyItem" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "SuccessStatus" should be displayed on "Status" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    Then I click "ExitButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex | keyword    |Provider|Product|
      | 1                               | BDD        |Cell C|100 SMS 30 Day|
#      | 2                               | BDD        |Cell C|200 SMS 30 Day|
#      | 3                               | BDD        |Cell C|25 SMS 30 Day|
#      | 4                              | BDD         |Cell C|300 SMS 30 day|
#      | 5                              | BDD        |Cell C| 50 SMS 30 Day|
#      | 6                              | BDD        |Cell C|500 SMS 30 Day|




  @Buy_SMS_On_Telkom
  Scenario Outline: Add Item to Buy SMS On <Provider> For <Product>

    Given I have test data from "buy/BuySmsForTelkom.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "buy/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Buy" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |
    And I click "SMS" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "ItemName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "SelectProvider" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "Provider"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "SelectProduct" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "Product"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "CellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "NotifyCellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "BuyItem" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "SuccessStatus" should be displayed on "Status" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    Examples:
      | TestCaseId_and_TestDataRowIndex | keyword    |Provider|Product|
      |1                               | BDD        |Telkom|100 SMS|
#      | 2                               | BDD        |Telkom|1000 SMS|
#      | 3                              | BDD        |Telkom|1500 SMS|
#      | 4                              | BDD        |Telkom|200 SMS|
#      | 5                               | BDD        |Telkom| 2000 SMS|
#      | 6                              | BDD        |Telkom|50 SMS|
#      | 7                               | BDD        |Telkom|500 SMS|

  @Buy_SMS_On_MTN
  Scenario Outline: Add Item to Buy SMS On <Provider> For <Product>

    Given I have test data from "buy/BuySmsForMtn.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "buy/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Buy" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |
    And I click "SMS" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "ItemName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "SelectProvider" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "Provider"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "SelectProduct" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    When I scroll using xpath containing "Product"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "CellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "NotifyCellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "BuyItem" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    Then "SuccessStatus" should be displayed on "Status" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    Examples:
      | TestCaseId_and_TestDataRowIndex | keyword    |Provider|Product|
      | 1                               | BDD        |MTN|100 SMS|
#      | 2                               | BDD        |MTN|15 SMS|
#      | 3                               | BDD        |MTN|200 SMS|
#      | 4                               | BDD        |MTN|2000 SMS|
#      | 5                               | BDD         |MTN|30 SMS|
#      | 6                               | BDD          |MTN|300 SMS|
#      | 7                               | BDD        |MTN| 50 SMS|
#      | 8                               | BDD        |MTN|500 SMS|

  @Buy_SMS_ON_EXISTING_ITEM
  Scenario Outline: <Test_Case_Description>

    Given I have test data from "buy/BuySmsForVodacom.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "buy/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Buy" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "SelectRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes           | ANDROID                          |

    When I scroll using xpath containing "Existing SMS"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "BuyItem" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "SuccessStatus" should be displayed on "Status" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex | Test_Case_Description|
      | 11                               |Buy SMS on Existing Item|



#  @Buy_Bundles
#  Scenario Outline: Add Item to Buy Bundles
#
#    Given I have test data from "buy/BuyDataBundles.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "buy/webdriver_element_list.csv"
#      | Take_Screenshot |
#      | No              |
#
#    And I a "mobile" "APPLICATION" opened
#
#    And I enter a value on "LoginInPin0" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#
#    And I enter a value on "LoginInPin1" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#
#    And I enter a value on "LoginInPin2" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "LoginInPin3" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "LoginInPin4" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes            | ANDROID                         |
#
#    And I click "VerticalDots" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Buy" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No            | ANDROID                          |
#
#    And I click "AddNewRecipient" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No            | ANDROID                          |
#    And I click "Bundles" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I enter a value on "ItemName" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "SelectProvider" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    When I scroll using xpath containing "Provider"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "SelectProduct" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click on xpath containing "<Product>"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I enter a value on "CellNo" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I enter a value on "Email" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#    And I enter a value on "NotifyCellNo" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "Add" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "Confirm" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I enter a value on "Reference" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#
#    And I click "BuyItem" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I click "Confirm2" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#
#    And I wait
#    Then "SuccessStatus" should be displayed on "Status" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    And I click "Finish" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes             | ANDROID                          |
#    Then I click "ExitButton" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No             | ANDROID                          |
#
#    Examples:
#      | TestCaseId_and_TestDataRowIndex | keyword    |Provider|Product|
#      | 1                               | BDD        |Vodacom|100 SMS |
#       # | 2                               | BDD        |Vodacom| 1000 SMS|
#      #| 3                               | BDD        |Vodacom|1500 SMS|
#     # | 5                               | BDD        |Vodacom|20 SMS|
#     # | 6                               | BDD        |Vodacom| 200 SMS|
#      #| 7                              | BDD        |Vodacom|2000 SMS|
#      #| 8                               | BDD        |Vodacom| 300 SMS |
#      #| 9                               | BDD        |Vodacom|300 SMS|
#      #| 10                               | BDD        |Vodacom|500 SMS|
#      #| 11                               | BDD        |Cell C|100 SMS 30 Day|
#      #| 12                               | BDD        |Cell C|200 SMS 30 Day|
#      #| 13                               | BDD        |Cell C|25 SMS 30 Day|
#      #| 14                              | BDD         |Cell C|300 SMS 30 day|
#      #| 15                              | BDD        |Cell C| 50 SMS 30 Day|
#      #| 16                              | BDD        |Cell C|500 SMS 30 Day|
#      #| 17                               | BDD        |MTN|100 SMS|
#      #| 18                               | BDD        |MTN|15 SMS|
#      #| 19                               | BDD        |MTN|200 SMS|
#      #| 20                               | BDD        |MTN|2000 SMS|
#      #| 21                              | BDD        |MTN|30 SMS|
#      #| 22                             | BDD        |MTN|300 SMS|
#      #| 23                               | BDD        |MTN| 50 SMS|
#      #| 24                               | BDD        |MTN|500 SMS|
#      #|25                               | BDD        |Telkom|1500 SMS|
#      #| 26                               | BDD        |Telkom|100 SMS|
#      ##| 28                              | BDD        |Telkom|2000 SMS|
#      ###| 31                               | BDD        |Telkom|1000 SMS|
#

  @Buy_Electricity
  Scenario Outline: Add Item And Buy Electricity At <Provider>

    Given I have test data from "buy/BuyElectricity.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "buy/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |


    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Buy" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "AddNewRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |
    And I click "Electricity" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "ItemName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "SelectProvider" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I scroll using xpath containing "Provider"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Meter Number" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "SMSTokenNumber" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "NotifyCellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "Add" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "BuyItem" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then "SuccessStatus" should be displayed on "Status" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Examples:
      | TestCaseId_and_TestDataRowIndex | keyword    |Provider|
      | 1                               | BDD        |Actaris Municipality|
        #| 2                               | BDD        |Amahlathi Municipality| 1000 SMS|
     # | 3                               | BDD        |Bergrivie
     #  || Muncipality|1500 SMS|
     # | 5                               | BDD        |Cape Town Municipality|20 SMS|
     # | 6                               | BDD        |City Power Municipality| 200 SMS|
      #| 7                              | BDD        |Dipaleseng Municipality|2000 SMS|
     # | 8                               | BDD        |Drakenstein Municipality| 300 SMS |
      #| 9                               | BDD        |Ekurhuleni|100 SMS|
      #| 10                               | BDD        |Ekurhuleni Municipality|15 SMS|
      #| 11                               | BDD        |Emalahleni Municipality|200 SMS|
      #| 12                               | BDD        |Emfuleni Municipality|2000 SMS|
     # | 13                              | BDD        |Eskom|30 SMS|
      #| 14                              | BDD        |Eskom Municipality|300 SMS|
      #| 15                               | BDD        |EskomSystems| 50 SMS|
      #| 16                               | BDD        |EthekwiniCaps Municipality|500 SMS|
      #|17                               | BDD        |Ga-Sekonyana Municipality|1500 SMS|
     # | 18                               | BDD        |George Municipality|100 SMS|
     # | 19                              | BDD        |Midvaal Municipality|200 SMS|
     # | 20                              | BDD        |MogaleCityLM|2000 SMS|
     # | 21                               | BDD        |Mogalie City Municipality| 50 SMS|
     # | 22                              | BDD        |Mpofana Municipality|500 SMS|
      #| 23                               | BDD        |Msukuligwa Municipality|1000 SMS|
      #| 24                               | BDD        |Newcastle Municipality| 200 SMS|
     # | 25                              | BDD        |NewcastleFBE|2000 SMS|
     # | 26                               | BDD        |Nxuba Municipality|100 SMS 30 Day|
      #| 27                               | BDD        |Polokwane Municipality|200 SMS 30 Day|
      #| 28                               | BDD        |Randfontein Municipality|25 SMS 30 Day|
      #| 30                              | BDD         |Rustenburg Municipality|300 SMS 30 day|
      #| 31                              | BDD        |Senqu Municipality| 50 SMS 30 Day|
      #| 32                              | BDD        |Sol Plaatje Municipality|500 SMS 30 Day|
     # | 33                               | BDD        |Stellenbosch Municipality|100 SMS|
     # | 34                               | BDD        |Theewaterskloof Municipality|15 SMS|
      #| 35                               | BDD        |TshwaneFBE|200 SMS|
      #| 36                               | BDD        |uMhlathuze Municipality|2000 SMS|
      #| 37                              | BDD        |uMlalazi Municipality|30 SMS|
     # | 38                             | BDD        |uMsobomvu Municipality|

  @Buy_ELECTRICITY_ON_EXISTING_ITEM
  Scenario Outline: <Test_Case_Description>

    Given I have test data from "buy/BuyElectricity.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "buy/webdriver_element_list.csv"
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
      | No              | ANDROID                          |

    And I enter a value on "LoginInPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                         |

    And I select "Profiles"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "VerticalDots" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Buy" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I click "SelectRecipient" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |

    And I scroll using xpath containing "ExistingElectricity"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Reference" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "Amount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I click "BuyItem" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Confirm2" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    Then "SuccessStatus" should be displayed on "Status" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    Then I click "ExitButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |


    Examples:
      | TestCaseId_and_TestDataRowIndex |Test_Case_Description|
      |39                              | Buy Electricity on Existing Item|
      ##| 2                               | BDD        |Money|
