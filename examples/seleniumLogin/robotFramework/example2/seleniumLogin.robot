*** Settings ***
Documentation     The example uses the Selenium library and user keywords.
Library           SeleniumLibrary

*** Variables ***
${url}            https://www.stealmylogin.com/demo.html
${username}       testUsername
${password}       testPassword

*** Test Cases ***
Test Login
    [Documentation]    Login to the specified website and check if the registration was successful.
    Open Browser To Login Page
    Input Username
    Input Password
    Submit Credentials
    Close Browser

*** Keywords ***
Open Browser To Login Page
    Open Browser    https://www.stealmylogin.com/demo.html    firefox

Input Username
    Input Text    username    ${username}

Input Password
    Input Text    password    ${password}

Submit Credentials
    Click Button    login

Example Domain Should Be Open
    Title Should Be    Example Domain
