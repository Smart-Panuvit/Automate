*** Settings ***
Library		SeleniumLibrary

*** Variables ***


*** Test Cases *** 
TC-16
    ${Answer} =     Calculate Factorial  5
    Log To Console      ${Answer}


*** Keywords ***
Calculate Factorial
    [Arguments]     ${number}
    ${number}=    Convert To Integer    ${number}
    Run Keyword IF      ${number}==1    Return From Keyword     1
    ${previous} =   Calculate Factorial     ${number-1}
    ${result} =     Evaluate    ${number} * ${previous}
    [Return]    ${result}
