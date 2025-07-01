*** Settings ***
Library		SeleniumLibrary
Resource    ./Variable/Variable.robot

Suite Setup
Suite Teardown
Test Setup
Test Teardown

*** Variables ***

*** Test Cases *** 
TC-01_01
    Validate Age    16
TC-01_02
    Validate Age    20


*** Keywords ***
Validate Age
    [Arguments]     ${age}
    IF     ${age}>18
        Log To Console      Eligible For Voting
    ELSE
        Log To Console      Not Eligible For Voting
    END

    
    