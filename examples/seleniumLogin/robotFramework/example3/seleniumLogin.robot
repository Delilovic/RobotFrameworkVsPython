*** Settings ***
Documentation     The example uses the Selenium library and user keywords that are moved to their own resource file.
Resource          resources.robot

*** Test Cases ***
Test Login
    [Documentation]    Login to the specified website and check if the registration was successful.
    Open Browser To Login Page
    Input Username
    Input Password
    Submit Credentials
    Close Browser
