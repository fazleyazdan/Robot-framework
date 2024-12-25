# here we will make custom keyword to use it in our page objects design pattern

*** Settings ***
Library    SeleniumLibrary
Variables    ../pages/login_page.py
# here i have imported page. "Variable" is built in keyword and i have specified page which contains elements locators
# so it will get all variable from that page & we can use it

*** Keywords ***
open the browser
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

enter username
    [Arguments]    ${username}
    Input Text    ${username_field}    ${username}

enter password
    [Arguments]    ${password}
    Input Text    ${password_field}    ${password}

click login btn
    Click Element    ${loginBtn}

verify successful login
    Page Should Contain    Swag Labs

    