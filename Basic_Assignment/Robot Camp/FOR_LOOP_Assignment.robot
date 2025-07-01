*** Settings ***
Library		SeleniumLibrary

Suite Setup
Suite Teardown
Test Setup
Test Teardown

*** Variables ***
@{list}     ironman     batman  captain     superman    hulk    shazam  thor    flash   blackwidow  wonderwomen     hawkeye

*** Test Cases ***
TEST MARVEL
    ${i}    Set Variable  0
    FOR     ${value}    IN  @{list}
            ${number}   Evaluate    ${i}%2
            IF  ${number}==0
                Log to Console  ${value}
                ${i}    Evaluate    ${i}+1
            ELSE   
                ${i}    Evaluate    ${i}+1
            END
            #Exit For Loop IF    "${value}"=="blackwidow"
    END     
*** Keywords ***
