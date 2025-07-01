*** Settings ***
Library		SeleniumLibrary

Suite Teardown  Log To Console  Suite Teardown is running
Test Teardown   Log To Console  Test Teardown is running

*** Variables ***


*** Test Cases *** 
TC-19_01
    [Teardown]    Log To Console    Test Case Teardown is running
    Log To Console    Running the test
TC-19_02
    Keyword With Teardown
TC-19_03
    [Teardown]    Log To Console    Test Case Teardown is running
    Log To Console    Running the test3
    
*** Keywords ***
Keyword With Teardown
    [Teardown]    Log To Console    Keyword Teardown is running
    Log To Console    Running the keyword