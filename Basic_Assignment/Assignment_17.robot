*** Settings ***
Library		SeleniumLibrary

*** Variables ***


*** Test Cases *** 
TC-17
    [Setup]     Open Browser    https://www.google.co.th/?hl=th     gc
    [Teardown]  Close Browser
    Log To Console  Test is running
    
*** Keywords ***