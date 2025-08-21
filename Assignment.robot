*** Settings ***
Library		SeleniumLibrary

Suite Setup
Suite Teardown
Test Setup
Test Teardown

*** Variables ***
${URL}              https://training-platform.doppio-tech.com
${BROWSER}          chrome
${Name}             Panuvit
${Surname}          Sakulpojworachai
${Shipping_Add}     Test
${Phone}            0863488177
${Card_Num}         4111111111111111
${Exp}              12/2030
${CV}               123

*** Keywords ***
Open Training Platform
    Open Browser    ${URL}    ${BROWSER}
    Sleep   2s

Go To Login Page
    Wait Until Page Contains Element    xpath=//*[@id='app']//header    10s
    Click Element    //*[@id="app"]/section/header/ul/div/div[2]/div[2]/span
    Sleep   2s

Register New Account
    [Arguments]    ${email}    ${password}
    Click Element    //*[@id="app"]/section/div/div/form/div[4]/div/div/div/div/button
    Wait Until Element Is Visible    id=basic_username
    Input Text    id=basic_username             ${email}
    Input Text    id=basic_password          ${password}
    Input Text    id=basic_confirmPassword  ${password}
    Click Element  //*[@id="app"]/section/div/div/form/div[4]/div/div/div/div/button
    Wait Until Element Is Visible    //div[@class='ant-modal-confirm-btns']/button  10s
    Click Element  //div[@class='ant-modal-confirm-btns']/button
    Sleep   2s

Search 
    [Arguments]     ${search}
    Input Text      //*[@id="app"]/section/div/div[1]/span/span/input   ${search}
    Click Element   //*[@id="app"]/section/div/div[1]/span/span/span/button
    Sleep   2s

Select First Product
    Click Element   //*[@id="app"]/section/div/div[2]/div/div[1]/div/div[2]
    Sleep   2s

Add to Cart
    Click Element   //*[@id="app"]/section/div/div/div[4]/button
    Sleep   2s
    Click Element  //div[@class='ant-modal-confirm-btns']/button
    Sleep   2s

Go to Cart
    Click Element   //*[@id="app"]/section/header/ul/div/div[2]/div[1]/span
    Sleep 2s

Fill Delivery Info and Click Pay
    Input Text  //*[@id="form_item_name"]       ${Name}
    Input Text  //*[@id="form_item_surName"]    ${Surname}
    Input Text  //*[@id="form_item_address"]    ${Shipping_Add}
    Input Text  //*[@id="form_item_phone"]      ${Phone}
    Click Element   //*[@id="app"]/section/div/div[3]/div/div/div/div/div/div/div/button
    sleep   2s

Pay by Credit Card
    Click Element   //*[@id="app"]/section/div/div/button
    Sleep   2s

Pay by Qr Code
    Click Element   //*[@id="app"]/section/div/div/div/div[2]/label/span[1]/input
    Click Element   //*[@id="app"]/section/div/div/button
    Sleep   2s

Input Payment Details and Confirm Payment
    Input Text  //*[@id="basic_bin"]    ${Card_Num}
    Input Text  //*[@id="basic_exp"]    ${Exp}
    Input Text  //*[@id="basic_cvc"]    ${CV}
    Input Text  //*[@id="basic_owner"]  ${Name}
    Click Element   //*[@id="app"]/section/div/div/form/div[4]/div/div/div/div/button
    Sleep   2s

Apply Coupon
    Input Text  //*[@id="app"]/section/div/div[2]/div/div[1]/div[2]/span/input
    Click Element   //*[@id="app"]/section/div/div[2]/div/div[1]/div[2]/span/input
    Sleep   2s

Remove Coupon
    Click Element   //*[@id="app"]/section/div/div[2]/div/div[1]/div[2]/span/button[2]
    Sleep 2s

Remove Cart
    Click Element   //*[@id="app"]/section/div/div[2]/div/div[1]/div[1]/div/div/div/ul/div[1]/button

Back To Home Page
    Click Element   //*[@id="app"]/section/header/ul/div/div[1]/li

Go to Profile Page
    Click Element   //*[@id="app"]/section/header/ul/div/div[2]/div[2]/span



*** Test Cases ***
Assignment
    Open Training Platform
    Go to Login Page
    Register New Account    Test3345678@doppio.com    Aa@12345
    Search   Phone
    Select First Product
    Add to Cart
    Go to Cart
    Fill Delivery Info and Click Pay