*** Settings ***
Documentation     This Variables can help a tester to create edge scenario
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