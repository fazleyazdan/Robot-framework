*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    chrome

*** Test Cases ***
keyword without arguments
    launch browser            # here you can pass args to it like browser & url but it is optional
    

*** Keywords ***
launch browser
    Open Browser    ${url}    ${browser}        # keep in mind this will take value directly from variable section...
    Maximize Browser Window                     # so passing args to it, when it is called in test cases is optional   