*** Settings ***
Library		SeleniumLibrary

*** Variables ***


*** Test Cases *** 
TC-12
    ${age}      Set Variable    17  
    Run Keyword IF  ${age}>18   Log To Console  You are an adult
    ...     ELSE IF     ${age}==18   Log To Console  You just became an adult
    ...     ELSE    Log To Console  You are underage

*** Keywords ***
