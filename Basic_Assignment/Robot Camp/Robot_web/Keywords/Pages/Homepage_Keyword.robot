*** Settings ***
Library     SeleniumLibrary

Resource    ../../Resources/Library/Import.robot

*** Keywords ***
Click_Cart_Button
    click element   ${Cart_button}
