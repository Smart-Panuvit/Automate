*** Settings ***
Library		SeleniumLibrary

Suite Setup
Suite Teardown
Test Setup
Test Teardown

*** Variables ***


*** Keywords ***
Search 
    [Arguments]     ${Search}
    Input Text      //*[@id="search-input"]         ${Search}
    Click Element   //*[@id="search-button"]
    Sleep   2s

Add Product to Cart By Name
    [Arguments]     ${Name}
    ${Locator}=     Set Variable    //div[contains(@class,'product')][.//h3[normalize-space()='${Search}']]//button[normalize-space()='Add to Cart']
    Wait Until Page Contains Element    ${loc}    10s
    Click Element   ${Locator}



