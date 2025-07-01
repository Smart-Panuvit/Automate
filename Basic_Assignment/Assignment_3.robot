*** Settings ***
Library		SeleniumLibrary
Resource    ./Variable/Variable.robot

Suite Setup
Suite Teardown
Test Setup
Test Teardown

*** Variables ***

*** Test Cases ***
Tc-03
    Print User Info

****Keywords ***
Print User Info
    Log To Console  Logname : "${User_Info["name"]}"
    Log To Console  Logage : "${User_Info["age"]}"
    Log To Console  Logcity : "${User_Info["city"]}"