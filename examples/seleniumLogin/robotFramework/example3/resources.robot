*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${password}       testPassword
${username}       testUsername
${url}            https://www.stealmylogin.com/demo.html

*** Keywords ***
Example Domain Should Be Open
    Title Should Be    Example Domain

Submit Credentials
    Click Button    login

Input Password
    Input Text    password    ${password}

Input Username
    Input Text    username    ${username}

Open Browser To Login Page
    Open Browser    https://www.stealmylogin.com/demo.html    firefox
