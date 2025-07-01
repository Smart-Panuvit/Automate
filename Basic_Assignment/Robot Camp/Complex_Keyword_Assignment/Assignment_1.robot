*** Settings ***
Library		SeleniumLibrary
Library     Collections

*** Variables ***


*** Test Cases *** 
TC-01
    ${User} =   Get User Info       Reader   Low
    Validate User Permissions  ${User}
    
*** Keywords ***
Get User Info
    #[Arguments]     ${Role}     ${Required_Access}
    #${index} =  Set Variable    -1
    #${Roles} =  Create list     Admin   Editor  Writer  Reader
    #IF  "${Role}" == "Admin"
    #    ${index} =   Set Variable   0
    #ELSE IF     "${Role}" == "Editor"
    #    ${index} =   Set Variable   1
    #ELSE IF     "${Role}" == "Writer"
    #    ${index} =   Set Variable   2
    #ELSE IF     "${Role}" == "Reader"
    #    ${index} =   Set Variable   3
    #ELSE
    #    Log To Console  You Input In correct Role
    #END
    #${User_Info} =  Create Dictionary   Role=${Roles[${index}]}  Access=${Required_Access}
    #[Return]    ${User_Info}
    [Arguments]     ${Role}     ${Required_Access}
    ${Roles} =  Create list     Admin   Editor  Writer  Reader
    ${index}    Collections.Get Index From List    ${Roles}    ${Role}
    ${User_Info} =  Create Dictionary   Role=${Roles[${index}]}  Access=${Required_Access}
    RETURN   ${User_Info}

Validate User Permissions
    [Arguments]     ${User_Info}
    IF  "${User_Info.Role}" == "Admin" and "${User_Info.Access}" == "High"
        Log To Console  Your Role is Admin
    ELSE IF     "${User_Info.Role}" == "Editor" and "${User_Info.Access}" == "Medium"
        Log To Console  Your Role is Editor
    ELSE IF     "${User_Info.Role}" == "Writer" and "${User_Info.Access}" == "Medium"
        Log To Console  Your Role is Writer
    ELSE IF     "${User_Info.Role}" == "Reader" and "${User_Info.Access}" == "Low"
        Log To Console  Your Role is Reader
    ELSE
        Log To Console  Your Permissions is incorrect
    END
