*** Settings ***
Library		SeleniumLibrary
Resource    ./Variable/Variable.robot

Suite Setup
Suite Teardown
Test Setup
Test Teardown

*** Variables ***

*** Test Cases *** 
TC-05
    Print All Items     Apple   Cherry  Banana

*** Keywords ***
Print All Items
    [Arguments]     @{items}
    FOR          ${items}   IN  @{items}
        Log To Console   ${items}
    END