*** Settings ***
Library		SeleniumLibrary

Suite Setup
Suite Teardown
Test Setup
Test Teardown

*** Variables ***


*** Test Cases ***
TC-02
    Print Fruits    apple   banana  cherry

*** Keywords ***
Print Fruits
    [Arguments]     @{Fruits}
    FOR     ${Fruit}    IN  @{Fruits}
        Log To Console      ${Fruit}
    END