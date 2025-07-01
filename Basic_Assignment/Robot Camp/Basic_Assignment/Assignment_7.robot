*** Settings ***
Library		SeleniumLibrary
Resource    ./Variable/Variable.robot
Variables   ./Variable/Variable.yaml

Suite Setup
Suite Teardown
Test Setup
Test Teardown

*** Variables ***


*** Test Cases *** 
TC-07
    Log To Console  ${yaml user.name}
    Log To Console  ${yaml user.age}
    Log To Console  ${yaml user.city}