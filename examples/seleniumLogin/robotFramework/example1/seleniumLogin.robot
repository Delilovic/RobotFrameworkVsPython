*** Settings ***
Documentation     The example uses the Selenium library and library keywords.
Library           SeleniumLibrary

*** Variables ***
${url}            https://www.stealmylogin.com/demo.html
${username}       testUsername
${password}       testPassword

*** Test Cases ***
Test Login
    [Documentation]    Login to the specified website and check if the registration was successful.
    Open Browser    https://www.stealmylogin.com/demo.html    firefox
    Input Text    username    ${username}
    Input Text    password    ${password}
    Click Button    login
    Title Should Be    Example Domain
    Close Browser
