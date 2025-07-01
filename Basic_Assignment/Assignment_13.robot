*** Settings ***
Library		SeleniumLibrary

*** Variables ***


*** Test Cases *** 
TC-13
    @{Fruit} =  Create List     apple   banana  cherry
    FOR     ${Fruit}    IN  @{Fruit}
        Log To Console      ${Fruit}
    END

*** Keywords ***