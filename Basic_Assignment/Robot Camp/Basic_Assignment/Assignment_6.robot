*** Settings ***
Library		SeleniumLibrary
Resource    ./Variable/Variable.robot

Suite Setup
Suite Teardown
Test Setup
Test Teardown

*** Variables ***


*** Test Cases *** 
TC-06
    Set Local Variable


*** Keywords ***
Set Local Variable
    [Arguments]     ${LOCAL_VAR}=LOCAL_VAR
    Log To Console  ${LOCAL_VAR}
    Log To Console  ${GLOBAL_VAR}