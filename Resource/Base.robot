*** Settings ***
Documentation     Base Function
Library    SeleniumLibrary

*** Variables ***
${urlSignUp}  https://qademo.onebrick.io/
${urlLogin}    https://qademo.onebrick.io/login
${browser}  Chrome
${delay}  3
${LOWER}    qwertyuiopasdfghjklzxcvbnm
${UPPER}    QWERTYUIOPASDFGHJKLZXCVBNM
${LETTERS}  ${LOWER}${UPPER}
${NUMBERS}  1234567890
${username}     ${EMPTY}
${password}     ${EMPTY}