# in this test we will use 2 kinds of waits
# 1. Sleep : it is a hard wait and apply only to 1 statement which comes after it
# 2. Selenium Speed: this wait is applied to each statements that comes after it.
# if you don't specify the speed. default selenium speed is 0s. 

*** Settings ***
Library    SeleniumLibrary 

*** Variables ***

*** Test Cases ***
Testing Waits 
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window

    ${seleniumspeed}=    Get Selenium Speed
    Log To Console    ${seleniumspeed}    # here the speed will be 0s because we have'nt specified it yet
    Set Selenium Speed    2             # every statement below will be executed after 2s of delay
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Element    id:login-button
    Close Browser
    Log To Console    ${seleniumspeed}    # here it will be 2s because we have specified speed of 2s
