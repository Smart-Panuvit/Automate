*** Settings ***
Library     SeleniumLibrary

Resource    ../../Resources/Library/Import.robot

*** Keywords ***
Click_Sign_Up_Login_Page
    click element   ${Sign_Up_Button}
