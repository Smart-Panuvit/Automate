*** Settings ***
Library		SeleniumLibrary
Resource    ./Variable/Variable.robot
Variables   ./Variable/Variable.yaml


*** Variables ***


*** Test Cases *** 
TC-11
    &{user} =   Create User Info
    Log To Console      Log Name: ${user.name}

*** Keywords ***
Create User Info
    ${user_info} =  Create Dictionary   name=John   age=30  city=Bangkok
    [Return]        ${user_info}