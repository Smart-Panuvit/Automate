*** Settings ***
Library		SeleniumLibrary
Resource    ./Variable/Variable.robot
Variables   ./Variable/Variable.yaml


*** Variables ***


*** Test Cases *** 
TC-09_01
    ${x} =  Calculate Square    3
    Log To Console  ${X}
*** Keywords ***
Calculate Square
    [Arguments]     ${Numbers}
    ${Result}   Evaluate    ${Numbers}*${Numbers}
    Log To Console     ${Result} 
    [Return]    ${Result}


