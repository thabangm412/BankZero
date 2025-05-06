@Friend  @web_application

Feature:Invite A Child
  @InviteAChild
  Scenario Outline: Invite a Child for

    Given I have test data from "invitechild/InviteChild_Data.csv" at row number "<TestCaseId_and_TestDataRowIndex>" with web page elements listed on "invitechild/webdriver_element_list.csv"
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
    And I a clear caches

    And I a "mobile" "APPLICATION" opened


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
      | Yes              | ANDROID                         |

    And I enter a value on "cardPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |

    And I enter a value on "cardPin3" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |

    And I enter a value on "cardPin4" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
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
      | Yes              | ANDROID                          |
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
    And I click on xpath containing "<AddressType>"
      | Take_Screenshot | Element_Locator_Application_Type |
      | No              | ANDROID                          |
    And I enter a value on "EstateName2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                         |
    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
      ######################################I am saving for

    And I enter a value on "savingGoal" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
    And I enter a value on "goalAmount" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
    And I click "nextButton" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |
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
      | Yes              | ANDROID                          |
    And I enter a value on "cardConfirmPin1" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
    And I enter a value on "cardConfirmPin2" text box
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes              | ANDROID                          |
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
    Then "Read your 'Welcome' letter" should be displayed on "ReadYourWelcomeLetter" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                          |
    And I click "Finish" web page element
      | Take_Screenshot | Element_Locator_Application_Type |
      | Yes             | ANDROID                           |


    Examples:
      | TestCaseId_and_TestDataRowIndex | keyword    |   Image  |TypeOfNationality|TypeOfIDocument|
      | 1                               | BDD        |images (3).jpeg|South Africa|Birth certificate|
      #| 2                              | BDD        |images (2).jpeg|South Africa|SA passport|

