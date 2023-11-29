*** Settings ***
Documentation     Action Function
Library    SeleniumLibrary
Resource    ../Resource/Action.robot

*** Test Cases ***
Doesn't Exist User    
    Open Browser    ${urlLogin}    ${browser}
    Maximize Browser Window
    Sleep  ${delay}
    Random Email
    Enter Password
    Submit
    Verify
    Close Browser

Wrong Password
    Open Browser    ${urlLogin}    ${browser}
    Maximize Browser Window
    Sleep  ${delay}
    Correct Email
    Wrong Password
    Submit
    Verify
    Close Browser