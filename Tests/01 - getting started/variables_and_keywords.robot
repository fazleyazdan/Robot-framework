*** Settings ***
Library    SeleniumLibrary 

*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    chrome

# variable names are enclosed in curly braces having $ at the start.
# Then value of these variable are in front of them separated by a Tab

*** Test Cases ***
LoginTest
    Open Browser    ${url}    ${browser}
#   Open Browser    https://www.saucedemo.com/    chrome
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Element    id:login-button
    Close Browser

*** Keywords ***
# Here we create custom keywords & then their functionality
# For example here we can make a custom keyword "LoginToApp" having functionality to login to App.
LoginToApp
    Open Browser    https://www.saucedemo.com/    chrome
    Open Browser    ${url}    ${browser}
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Element    id:login-button
    Close Browser