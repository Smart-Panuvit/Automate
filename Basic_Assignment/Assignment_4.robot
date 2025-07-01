*** Settings ***
Library		SeleniumLibrary
Resource    ./Variable/Variable.robot

Suite Setup
Suite Teardown
Test Setup
Test Teardown

*** Variables ***

*** Test Cases *** 
TC-04
    Greet User  
    Greet User  Smart

*** Keywords ***
Greet User
    [Arguments]     ${name}=guest
    Log To Console      Hello,${name}