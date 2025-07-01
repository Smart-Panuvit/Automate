*** Settings ***
Library     SeleniumLibrary

Resource    ../Resources/Library/Import.robot
#Resource    ../Keywords/Pages/Register_Keyword.robot
#Resource    ../Keywords/Pages/Homepage_Keyword.robot

*** Test Cases ***
TC-01_Register
    Register_Keyword.Open_Browsers
    Homepage_Keyword.Click_Cart_Button
    Login_Page_Keyword.Click_Sign_Up_Login_Page
    Input_Username  panuvit.s1@doppiotech.com
    Input_Password  P@ss#1234
    Input_Confirm_Password  P@ss#1234
    Click_Sign_Up_Register_Page
    Click_OK_Register_Page


*** Keywords ***
Click_Sign_Up_Login_Page
    click element   xpath=//button[@class = 'css-eq3tly ant-btn ant-btn-default button-login']

Input_Username
    [Arguments]     ${Username}
    Input text      id=basic_username       ${Username}

Input_Password
    [Arguments]     ${Password}
    Input text      id=basic_password      ${Password}
       
Input_Confirm_Password
    [Arguments]     ${Confirm_Password}
    Input text      id=basic_confirmPassword      ${Confirm_Password}
    
Click_Sign_Up_Register_Page
    click element   xpath=//button

Click_OK_Register_Page
    click element   xpath=//span[text() = 'OK' ]
