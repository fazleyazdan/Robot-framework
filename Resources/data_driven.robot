*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    chrome

*** Keywords ***
open my browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
closing browser
    Close All Browsers

input username
    [Arguments]    ${username}
    Input Text    id:user-name    ${username}

input pswrd
    [Arguments]    ${password}
    Input Text    id:password    ${password}

click login button
    Click Element    id:login-button

validate login failure
    Page Should Contain    Epic sadface

validate after successful login
    Page Should Contain    Swag Labs