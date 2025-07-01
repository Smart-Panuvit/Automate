*** Settings ***
Library		SeleniumLibrary

*** Variables ***


*** Test Cases *** 
TC-14
    FOR     ${numbers}  IN RANGE   1   10
        Run Keyword IF  ${numbers}==5    Exit FOR LOOP
        Log To Console      ${numbers}
        Run Keyword IF  ${numbers}==3    Continue FOR LOOP
    END

*** Keywords ***