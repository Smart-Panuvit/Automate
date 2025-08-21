*** Settings ***
Library		SeleniumLibrary

Suite Setup
Suite Teardown
Test Setup
Test Teardown

*** Variables ***


*** Keywords ***
Open Website
    Open Browser    file:///C:/Users/Panuvit%20Sakulpojwora/Downloads/Xpath%20exercises/Xpath%20exercises/Assignment.html       gc
    Sleep   2s

Search 
    [Arguments]     ${Search}
    Input Text      //*[@id="search-input"]         ${Search}
    Sleep   2s
    Click Element   //*[@id="search-button"]
    Sleep   2s

Add Product to Cart By Name
    [Arguments]     ${Name}
    ${Locator}=     Set Variable    //div[contains(@class,'product')][.//h3[normalize-space()='${Name}']]//button[normalize-space()='Add to Cart']
    Wait Until Page Contains Element    ${Locator}    10s
    Click Element   ${Locator}

Remove Product from Cart By Name
    [Arguments]     ${R_Name}
    ${R_Loc}=       Set Variable    //ul[@id='cart-items']/li[starts-with(normalize-space(), concat('${R_Name}',' -'))]
    Click Element   //*[@id="cart-button"]    
    ${before}=      Get Element Count    xpath=${R_Loc}
    Should Be True    ${before} > 0    No cart item named "${R_Name}"

    ${btn}=    Set Variable    xpath=(${R_Loc})[1]//button[normalize-space()='Remove']
    Wait Until Element Is Visible    ${btn}    5s
    Click Element    ${btn}

*** Test Cases ***
Test Assignment 2
    Open Website
    Add Product to Cart By Name         Oyster Sauce
    Add Product to Cart By Name         Oyster Sauce
    Remove Product from Cart By Name    Oyster Sauce