*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Handling alerts
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Click Element    id:confirmBtn

    # Alert Should Be Present    Press a button!    # validate text on alert & then close it with OK button
    
    Sleep    3
    Handle Alert    accept        # close alert with OK button
    # Handle Alert    dismiss        # close alert with cancel button
    # Handle Alert    leave         # alert is not closed & is left opened

    