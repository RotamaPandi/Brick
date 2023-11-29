*** Settings ***
Documentation     Action Function
Library    SeleniumLibrary
Library    FakerLibrary
Resource    Base.robot

*** Keywords ***
Click Submit
    Click element       css=input[name='login']

Random Email
    ${email} =  FakerLibrary.email
    Log To Console    ${email}
    Input Text    css=input[id='your_email']    ${email}

Correct Email
    Input Text   css=input[id='your_email']    pandi@gmail.com

Enter Password
    Input Text   css=input[id='password']    1234567

Wrong Password
    Input Text   css=input[id='password']    123

Submit
    Click Element    css=input[name='login']

Verify
    Wait Until Element Contains    css=h2[id='swal2-title']    Error
    Sleep  ${delay}
    Click Button    css=button[class='swal2-confirm swal2-styled']