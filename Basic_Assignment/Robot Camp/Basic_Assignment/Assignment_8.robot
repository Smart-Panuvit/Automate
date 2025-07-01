*** Settings ***
Library		SeleniumLibrary
Resource    ./Variable/Variable.robot
Variables   ./Variable/Variable.yaml


*** Variables ***


*** Test Cases *** 
TC-08
    Open Browser    ${yaml app url}     gc
    Input Text      //*[@id="APjFqb"]   ${yaml credentials.username}
    Sleep   5s
