*** Settings ***
Library		SeleniumLibrary

Suite Setup     Log To Console  Suite is starting
Suite Teardown  Log To Console  Suite is ending

*** Variables ***


*** Test Cases *** 
TC-18_01
    Log To Console  Running Test 1
TC-18_02
    Log To Console  Running Test 2
TC-18_03
    Log To Console  Running Test 3
    
*** Keywords ***