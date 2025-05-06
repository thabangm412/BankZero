@ChildRegistration   @web_application

Feature:Child Registration

  @ChildRegistration_CourierToResidentialAddress
  Scenario Outline:  Customer Registration to residential address (R99 - R129)

    Given I have test data from "child_registration/ChildRegistration_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "child_registration/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a "mobile" "APPLICATION" opened

    And I copy "filePathBirthCertificate" file to the phone
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

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

    And I click "PlusSign" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "childIcon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "SaIdNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "Surname" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "AllNames" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "Nationality" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "TypeOfNationality"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "attachClip" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "TypeOfIDocument"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "UploadClipImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "SearchIcon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I enter a value on "searchTextBox" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                         |

    And I scroll and select document "searchTextBox" from the device
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "uploadBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "inviteBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "confirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then I click "ExitButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |
And I wait
    ##################################################################### Register a child flow
And   I restart the app


    And I click "PairDevices" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I use "cellNumber" number to clear user profile
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cellNumber" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "id Number" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |


    And I enter a value on "Preferred Name" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "Submit" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I use the "cellNumber" number to retrieve "otp"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "card1stline" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "card2ndline" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "cardPin1" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "cardPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "cardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "cardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "cardConfirmPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |
    And I enter a value on "cardConfirmPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                            |
    And I enter a value on "cardConfirmPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |


    And I enter a value on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |


    And I enter a value on "confirmEmail" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "SourceofFundsTab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click on xpath containing "SourceOfFundsList" on customerRegistration
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "OK" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "wealthGrid" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click on xpath containing "SourceOfWeathList" on customerRegistration
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "OK" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Carddelivery" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "courierToResidentAddres" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "PleaseSelectDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "AddressType"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

#    And I enter a value on "EstateName2" text box
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                         |

    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
      ######################################I am saving for

    And I clear and write on "savingGoal" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I clear and write on "goalAmount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |
    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |
    ###################################################################################
    And I enter a value on "cardPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "cardConfirmPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardConfirmPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardConfirmPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardConfirmPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardConfirmPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "recoveryCellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "recoveryCellConfirm" text box
      | Take_Screenshot | Element_Locator_Application_Type  |
      | Yes              | ANDROID                          |

    And I enter a value on "recoveryEmail" text box
      | Take_Screenshot | Element_Locator_Application_Type  |
      | Yes              | ANDROID                          |

    And I click "submitButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |
    #######################################################################
    And I click "iAgreeCheckBox" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |
    And I click "confirmButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |
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
    And I force click "CDD Individuals" web page element
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

   # And I wait

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

    And I clickAndHold "Accept Selfie Pics" web page element
      | Take_Screenshot |
      | No              |

    And I force click "Accept Selfie Pics" web page element
      | Take_Screenshot |
      | No              |

    And I clickAndHold "Accept Profile Pics" web page element
      | Take_Screenshot |
      | No              |

    And I force click "Accept Profile Pics" web page element
      | Take_Screenshot |
      | No              |

    And I force click "Id Document" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Accept Id Book" web page element
      | Take_Screenshot |
      | No              |

    And I scroll into view "searchBtn" web page element

  And I wait

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
      #| 2                               |


  @ChildRegistration_Pick_Up_Retailer
  Scenario Outline:  Child Registration and Pick up at retailer(R59).

    Given I have test data from "child_registration/ChildRegistration_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "child_registration/webdriver_element_list.csv"
      | Take_Screenshot |
      | No             |

    And I a "mobile" "APPLICATION" opened

    And I copy "filePathBirthCertificate" file to the phone
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

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

    And I click "PlusSign" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "childIcon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "SaIdNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "Surname" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "AllNames" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "Nationality" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "TypeOfNationality"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "attachClip" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "TypeOfIDocument"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "UploadClipImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Image"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "uploadBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "inviteBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "confirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then I click "ExitButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    ##################################################################### Register a child flow
    And I wait
    And I a clear caches
    ##################################################################### Register a child flow
    And   I restart the app
   # And I a "mobile" "APPLICATION" opened customer Registration

    And I click "PairDevices" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I use "cellNumber" number to clear user profile
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cellNumber" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "id Number" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "Preferred Name" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "Submit" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |

    And I use the "cellNumber" number to retrieve "otp"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "card1stline" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "card2ndline" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "cardPin1" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "cardConfirmPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |
    And I enter a value on "cardConfirmPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |
    And I enter a value on "cardConfirmPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "cardConfirmPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
    And I enter a value on "cardConfirmPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "confirmEmail" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "SourceofFundsTab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click on xpath containing "SourceOfFundsList" on customerRegistration
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "OK" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "wealthGrid" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click on xpath containing "SourceOfWeathList" on customerRegistration
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "OK" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Carddelivery" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "pickupAtRetail" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                           |

    And I wait
    And I scroll using xpath containing "ClicksRetailers"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |

    And I click "confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

      ######################################I am saving for

    And I clear and write on "savingGoal" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I clear and write on "goalAmount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    ###################################################################################
    And I enter a value on "cardPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardConfirmPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "cardConfirmPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "cardConfirmPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "cardConfirmPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "cardConfirmPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "recoveryCellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "recoveryCellConfirm" text box
      | Take_Screenshot | Element_Locator_Application_Type  |
      | Yes              | ANDROID                          |
    And I enter a value on "recoveryEmail" text box
      | Take_Screenshot | Element_Locator_Application_Type  |
      | Yes              | ANDROID                          |

    And I click "submitButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |
    #######################################################################
    And I click "iAgreeCheckBox" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |
    And I click "confirmButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    ################################################################################
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |
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
    And I force click "CDD Individuals" web page element
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

   # And I wait

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

    And I clickAndHold "Accept Selfie Pics" web page element
      | Take_Screenshot |
      | No              |

    And I force click "Accept Selfie Pics" web page element
      | Take_Screenshot |
      | No              |

    And I clickAndHold "Accept Profile Pics" web page element
      | Take_Screenshot |
      | No              |

    And I force click "Accept Profile Pics" web page element
      | Take_Screenshot |
      | No              |

    And I force click "Id Document" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Accept Id Book" web page element
      | Take_Screenshot |
      | No              |

    And I scroll into view "searchBtn" web page element

    And I wait

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
      | 2                               |


  @ChildRegistration_CourierToDiffResidentialAddress
  Scenario Outline:  Customer Registration to different residential address (R99 - R129)

    Given I have test data from "child_registration/ChildRegistration_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "child_registration/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |
    And I a "mobile" "APPLICATION" opened

    And I copy "filePathBirthCertificate" file to the phone
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

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

    And I click "PlusSign" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "childIcon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "SaIdNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "Surname" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "AllNames" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "Nationality" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "TypeOfNationality"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "attachClip" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "TypeOfIDocument"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "UploadClipImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I scroll using xpath containing "Image"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "uploadBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "inviteBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "confirmBtn" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    Then I click "ExitButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    ##################################################################### Register a child flow
    And I wait
    ##################################################################### Register a child flow
    And   I restart the app
   # And I a "mobile" "APPLICATION" opened customer Registration

    And I click "PairDevices" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |


    And I use "cellNumber" number to clear user profile
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cellNumber" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |
    #And I Generate SA ID number and enter a value on "id Number" text box
    And I enter a value on "id Number" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
    And I enter a value on "Preferred Name" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "Submit" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |

    And I use the "cellNumber" number to retrieve "otp"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "card1stline" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "card2ndline" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "cardPin1" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
    And I enter a value on "cardConfirmPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |
    And I enter a value on "cardConfirmPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No            | ANDROID                          |
    And I enter a value on "cardConfirmPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "confirmEmail" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "SourceofFundsTab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click on xpath containing "SourceOfFundsList" on customerRegistration
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "OK" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "wealthGrid" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click on xpath containing "SourceOfWeathList" on customerRegistration
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I click "OK" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Carddelivery" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "CourieToDiffAdress" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "PleaseSelectDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I scroll using xpath containing "AddressType"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "EstateName2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "StreetAdress2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Suburb/city2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
      ######################################I am saving for

    And I clear and write on "savingGoal" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I clear and write on "goalAmount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |
    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |
    ###################################################################################
    And I enter a value on "cardPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardConfirmPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardConfirmPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardConfirmPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardConfirmPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "cardConfirmPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "recoveryCellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "recoveryCellConfirm" text box
      | Take_Screenshot | Element_Locator_Application_Type  |
      | Yes              | ANDROID                          |

    And I enter a value on "recoveryEmail" text box
      | Take_Screenshot | Element_Locator_Application_Type  |
      | Yes              | ANDROID                          |

    And I click "submitButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |
    #######################################################################
    And I click "iAgreeCheckBox" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |
    And I click "confirmButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |

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
    And I force click "CDD Individuals" web page element
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

   # And I wait

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

    And I clickAndHold "Accept Selfie Pics" web page element
      | Take_Screenshot |
      | No              |

    And I force click "Accept Selfie Pics" web page element
      | Take_Screenshot |
      | No              |

    And I clickAndHold "Accept Profile Pics" web page element
      | Take_Screenshot |
      | No              |

    And I force click "Accept Profile Pics" web page element
      | Take_Screenshot |
      | No              |

    And I force click "Id Document" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Accept Id Book" web page element
      | Take_Screenshot |
      | No              |

    And I scroll into view "searchBtn" web page element

    And I wait

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
      | 2                               |
