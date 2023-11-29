*** Settings ***
Documentation     Action Function
Library    SeleniumLibrary
Resource    ../Resource/Base.robot

*** Test Cases ***
Open    
    Open Browser    ${urlLogin}    ${browser}
    Maximize Browser Window
    Sleep  ${delay}

Email
    Input Text   css=input[id='your_email']    pandi@gmail.com

Password
    Input Text   css=input[id='password']    1234567

Submit
    Click Element    css=input[name='login']
    Wait Until Element Contains    css=h2[id='swal2-title']    Success
    Sleep  ${delay}
    Click Button    css=button[class='swal2-confirm swal2-styled']
    Click Element    css=a[class='btn btn-lg btn-danger']