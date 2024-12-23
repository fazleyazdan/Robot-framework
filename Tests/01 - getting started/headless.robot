# just write "headless" with the browser name : headlesschrome or headlessfirefox
*** Settings ***
Library    SeleniumLibrary 

*** Variables ***

*** Test Cases ***
LoginTest
    Open Browser    https://www.saucedemo.com/    headlesschrome
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Element    id:login-button
    Close Browser