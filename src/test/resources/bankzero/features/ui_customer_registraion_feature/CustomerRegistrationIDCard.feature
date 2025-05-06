@Customer_Registration_Feature_Functional_Test_Cases  @web_application

@ID_Card_CourierToResidentialAddress_Approve_KYC
Feature: Customer Registration

  Scenario Outline: Customer Registration Using ID Card Courier to residential address (R99 - R129) And Approve KYC <Test_Case_Description>

    Given I have test data from "customer_registration/Customer_Registrations_IDCard_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "customer_registration/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |
    And I a clear caches

    And I a "mobile" "APPLICATION" opened customer Registration


    And I click "changeUrl" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I click "dropDown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "QA Selby Env" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I click "btnSave" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

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
      | No             | ANDROID                           |

    ##And I wait

    And I use the "cellNumber" number to retrieve "otp"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "card1stline" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "card2ndline" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
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
      | No             | ANDROID                          |

    And I enter a value on "Surname" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |
    And I enter a value on "allNames" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |
    And I click "titleDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |
    And I scroll using xpath containing "titleType"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I enter email on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter email on "confirmEmail" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "attachClip" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I tap "SA ID card" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |

    And I click "UploadClipImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I click "SearchIcon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                           |

    And I enter a value on "IdFront" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |


    And I tap "ShowingIDFront" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                           |

    And I click "UploadClipImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I click "SearchIcon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "IdBack" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "ShowingIDBack" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                           |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "SourceofFundsTab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |
    And I click on xpath containing "SourceOfFundsList" on customerRegistration
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "OK" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "wealthGrid" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click on xpath containing "SourceOfWeathList" on customerRegistration
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "OK" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |
    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |
    And I click "TypeofDwelling" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    When I scroll using xpath containing "TypeofDwelling"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "EstateName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "StreetAdress" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "Suburb/city" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

#    And I click "SelectProvince" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#    And I tap "Gauteng" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |

#    And I click "postalCode" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
    And I click "Carddelivery" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |
    And I click "courierToResidentAddres" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |
    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |
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
      | No              | ANDROID                          |

    And I enter a value on "cardPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
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
      | No             | ANDROID                           |
    #######################################################################
    And I click "iAgreeCheckBox" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |
    And I click "confirmButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |
    Then "ExpectedConfirmationMessage" should be displayed on "ConfirmationMessage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

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
    And I force click "Accept Selfie Pics" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Accept Profile Pics" web page element
      | Take_Screenshot |
      | No              |

    And I force click "Id Document" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox SouthAfrican flag" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox FullName and Surname" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Valid Gender" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Id Number" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox birth date" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Valid countries" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Signature" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox PhotoTempering" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Compare PhotoWithSelfie" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Valid dates ofIssue" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Multiple layer image" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Accept Id Book" web page element
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
    And I click "ApproveKYCBtn" web page element
      | Take_Screenshot |
      | Yes             |

    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 1                               |
      #| 2                              |

  @ID_Card_CourierToDifferentResidentialAddress
  Scenario Outline:  Customer Registration Using ID Card Courier to a different address (R99 - R129)  <Test_Case_Description>

    Given I have test data from "customer_registration/Customer_Registrations_IDCard_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "customer_registration/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a clear caches

    And I a "mobile" "APPLICATION" opened customer Registration

    And I copy "filePathPassPot" file to the phone
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "changeUrl" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I click "dropDown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "QA Selby Env" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I click "btnSave" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

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
      | No             | ANDROID                           |

   # And I wait

    And I use the "cellNumber" number to retrieve "otp"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "card1stline" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "card2ndline" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
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
      | No             | ANDROID                          |

    And I enter a value on "Surname" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |
    And I enter a value on "allNames" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |
    And I click "titleDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |
    And I scroll using xpath containing "titleType"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I enter email on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter email on "confirmEmail" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "attachClip" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I tap "SA ID card" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |

    And I click "UploadClipImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I click "SearchIcon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                           |

    And I enter a value on "IdFront" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "ShowingIDFront" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                           |

    And I click "UploadClipImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I click "SearchIcon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "IdBack" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "ShowingIDBack" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                           |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "SourceofFundsTab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |
    And I click on xpath containing "SourceOfFundsList" on customerRegistration
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "OK" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "wealthGrid" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click on xpath containing "SourceOfWeathList" on customerRegistration
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "OK" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |
    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |
    ############################################################################ wHERE i am SCREEN
    And I click "TypeofDwelling" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |
    And I click on xpath containing "TypeofDwelling"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
    And I enter a value on "EstateName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "StreetAdress" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "Suburb/city" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
#    And I click "SelectProvince" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#    And I click on xpath containing "<Province>"
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#    And I click "postalCode" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | Yes              | ANDROID                          |
    And I click "Carddelivery" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |
    And I click "CourieToDiffAdress" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |

    And I hide keyboard
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I click "addressType" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |
    And I click on xpath containing "AddressType"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
    And I enter a value on "EstateName2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "StreetAdress2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "Suburb/city2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |
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
      | No              | ANDROID                          |

    And I enter a value on "cardPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
    And I enter a value on "recoveryCellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
    And I enter a value on "recoveryCellConfirm" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
    And I enter a value on "recoveryEmail" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "submitButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |
    #######################################################################
    And I click "iAgreeCheckBox" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |
    And I click "confirmButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |
    Then "ExpectedConfirmationMessage" should be displayed on "ConfirmationMessage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

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
    And I force click "Accept Selfie Pics" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Accept Profile Pics" web page element
      | Take_Screenshot |
      | No              |

    And I force click "Id Document" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox SouthAfrican flag" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox FullName and Surname" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Valid Gender" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Id Number" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox birth date" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Valid countries" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Signature" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox PhotoTempering" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Compare PhotoWithSelfie" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Valid dates ofIssue" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Multiple layer image" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Accept Id Book" web page element
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
    And I click "ApproveKYCBtn" web page element
      | Take_Screenshot |
      | Yes             |


    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 1                                |


  @ID_Card_CourierUpAtRetail
  Scenario Outline:  Customer Registration Using ID Card Pick up at retailer (R59)  <Test_Case_Description>

    Given I have test data from "customer_registration/Customer_Registrations_IDCard_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "customer_registration/webdriver_element_list.csv"
      | Take_Screenshot |
      | No              |

    And I a clear caches

    And I a "mobile" "APPLICATION" opened customer Registration

    And I copy "filePathPassPot" file to the phone
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "changeUrl" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I click "dropDown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "QA Selby Env" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I click "btnSave" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

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
      | No             | ANDROID                           |


    And I use the "cellNumber" number to retrieve "otp"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |

    And I enter a value on "card1stline" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "card2ndline" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
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
      | No             | ANDROID                          |

    And I enter a value on "Surname" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |
    And I enter a value on "allNames" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |
    And I click "titleDropdown" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |
    And I scroll using xpath containing "titleType"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I enter email on "Email" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter email on "confirmEmail" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "attachClip" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I tap "SA ID card" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |

    And I click "UploadClipImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I click "SearchIcon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                           |

    And I enter a value on "IdFront" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "ShowingIDFront" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                           |

    And I click "UploadClipImage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    And I click "SearchIcon" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "IdBack" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "ShowingIDBack" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                           |

    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "SourceofFundsTab" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |
    And I click on xpath containing "SourceOfFundsList" on customerRegistration
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "OK" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "wealthGrid" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click on xpath containing "SourceOfWeathList" on customerRegistration
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click "OK" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |

    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I click "TypeofDwelling" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I click on xpath containing "TypeofDwelling"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "EstateName" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "StreetAdress" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "Suburb/city" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
#    And I click "SelectProvince" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#    And I click on xpath containing
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |
#    And I click "postalCode" web page element
#      | Take_Screenshot | Element_Locator_Application_Type |
#      | No              | ANDROID                          |

   And I click "Carddelivery" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |
    And I click "pickupAtRetail" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |

    And I scroll using xpath containing "ClicksRetailers"
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                           |

    And I click "confirm" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes            | ANDROID                           |

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
      | No              | ANDROID                          |

    And I enter a value on "cardPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |

    And I enter a value on "cardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin0" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "cardConfirmPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
    And I enter a value on "recoveryCellNo" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
    And I enter a value on "recoveryCellConfirm" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
    And I enter a value on "recoveryEmail" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I click "submitButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |
    #######################################################################
    And I click "iAgreeCheckBox" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                          |
    And I click "confirmButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

    Then "ExpectedConfirmationMessage" should be displayed on "ConfirmationMessage" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | No             | ANDROID                           |

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
    And I force click "CheckBox SouthAfrican flag" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox FullName and Surname" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Valid Gender" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Id Number" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox birth date" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Valid countries" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Signature" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox PhotoTempering" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Compare PhotoWithSelfie" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Valid dates ofIssue" web page element
      | Take_Screenshot |
      | No              |
    And I force click "CheckBox Multiple layer image" web page element
      | Take_Screenshot |
      | No              |
    And I force click "Accept Id Book" web page element
      | Take_Screenshot |
      | No              |

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
      | Yes             |

    And I click "ApproveKYCBtn" web page element
      | Take_Screenshot |
      | Yes             |

    Examples:
      | TestCaseId_and_TestDataRowIndex |
      | 1                               |
