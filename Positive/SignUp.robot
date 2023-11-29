*** Settings ***
Documentation     Action Function
Library    SeleniumLibrary
Library    String
Library    FakerLibrary
Resource    ../Resource/Base.robot

*** Test Cases ***
Sign up    
    Open Browser    ${urlSignUp}    ${browser}
    Maximize Browser Window
    Sleep  ${delay}
First Name
    ${firstName} =    Generate Random String    5    ${UPPER}
    Input Text   css=input[id='firstName']
    ...   ${firstName}

Last Name
    ${lastName} =    Generate Random String  5    ${UPPER}
    Input Text   css=input[id='lastName']
    ...   ${lastName}

Your Email
    ${email} =  FakerLibrary.email
    Log To Console    ${email}
    Input Text    css=input[id='email']    ${email}

Phone Number
    ${phoneNumber} =         Generate Random String    8    ${NUMBERS}
    Input Text   css=input[id='phoneNumber']
    ...   ${phoneNumber}

Your Address
    Input Text   css=input[id='address']    Jl.Damai

Password & Confirm Password
    ${password} =         Generate Random String    6    ${NUMBERS}
    Input Text   css=input[id='password']
    ...   ${password}
    Input Text   css=input[id='confirm_password']
    ...   ${password}

Submit
    Click Element    css=input[type='submit']
    Wait Until Element Contains    css=h2[id='swal2-title']    Success
    Sleep  ${delay}
    Click Button    css=button[class='swal2-confirm swal2-styled']