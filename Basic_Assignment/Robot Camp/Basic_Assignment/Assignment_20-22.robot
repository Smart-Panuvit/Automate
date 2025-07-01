*** Settings ***
Library		SeleniumLibrary

*** Variables ***


*** Test Cases *** 
TC-20
    [Tags]    Regression
    Log    This is a Regression test
TC-21
    [Tags]    Smoke     Critical
    Log    This is a Smoke and Critical Test
TC-22
    [Tags]    Regression    Smoke
    Log    This is a Regression and Smoke test
    
*** Keywords ***