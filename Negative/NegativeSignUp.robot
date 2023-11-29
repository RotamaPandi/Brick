*** Settings ***
Documentation     Action Function
Library    SeleniumLibrary
Library    String
Resource    ../Resource/Action.robot

*** Test Cases ***
Empty Requiremnet fields   
    Open Browser    ${urlSignUp}    ${browser}
    Maximize Browser Window
    Sleep  ${delay}
    Click Element    css=input[name='register']
    Wait Until Element Contains    css=label[id='firstName-error']    Please enter a firstname
    Wait Until Element Contains    css=label[id='lastName-error']    Please enter a lastname
    Wait Until Element Contains    css=label[id='email-error']    Please provide an email
    Wait Until Element Contains    css=label[id='password-error']    Please enter a password
    Wait Until Element Contains    css=label[id='confirm_password-error']    Please enter a password

Checking Email validation
    ${firstName} =    Generate Random String    5    ${UPPER}
    Input Text   css=input[id='firstName']
    ...   ${firstName}
    
    ${lastName} =    Generate Random String  5    ${UPPER}
    Input Text   css=input[id='lastName']
    ...   ${lastName}
    
    Input Text    css=input[id='email']    emailSalah.com
    Wait Until Element Contains    css=label[id='email-error']    Please enter a valid email address.

Unrequirement Password
    ${password} =         Generate Random String    5    ${NUMBERS}
    Input Text   css=input[id='password']
    ...   ${password}
    Wait Until Element Contains    css=label[id='password-error']    Please enter at least 6 characters.
    ${password} =         Generate Random String    6    ${NUMBERS}
    Input Text   css=input[id='password']
    ...   ${password}
    ${ConfirmPass} =         Generate Random String    5    ${NUMBERS}
    Input Text   css=input[id='confirm_password']
    ...   ${ConfirmPass}
    Wait Until Element Contains    css=label[id='confirm_password-error']    Password need to match
    Input Text   css=input[id='confirm_password']
    ...   ${password}
    
