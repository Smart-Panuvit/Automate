*** Settings ***
Library     SeleniumLibrary



*** Keywords ***
Open_Browsers
    SeleniumLibrary.OpenBrowser     ${URL}      gc

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