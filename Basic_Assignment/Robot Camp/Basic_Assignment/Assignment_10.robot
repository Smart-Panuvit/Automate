*** Settings ***
Library		SeleniumLibrary
Resource    ./Variable/Variable.robot
Variables   ./Variable/Variable.yaml


*** Variables ***


*** Test Cases *** 
TC-10
    @{my_fruits} =  Create Fruit list
    ${numbers} =     Number Of Fruits  @{my_fruits}
    Log To Console      ${my_fruits[0]}
    Log To Console      ${my_fruits[1]}
    Log To Console      ${my_fruits[2]}
    Log To Console      ${numbers}

*** Keywords ***
Create Fruit list
    ${Fruit} =   Create List    Apple   Cherry  Banana
    [Return]      ${Fruit}

Number Of Fruits
    [Arguments]     @{fruit_list}
    ${number} =     Get length  ${fruit_list}
    [Return]        ${number}

