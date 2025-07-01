*** Settings ***
Library		SeleniumLibrary

*** Variables ***


*** Test Cases *** 
TC-15
    ${status}   Run Keyword And Return Status   Click Element   id=0
    Log To Console  Status: ${status}
    Run Keyword And Ignore Error    Input Text    id=0    5
    Log To Console  Ignored the error and continued

*** Keywords ***