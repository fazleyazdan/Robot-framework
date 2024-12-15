*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    chrome

*** Test Cases ***
keyword with arguments
    launch browser    ${url}    ${browser}            
    

*** Keywords ***
launch browser
    [Arguments]    ${url}    ${browser}            # here we have defined that this keyword will take 2 args        
    Open Browser    ${url}    ${browser}
    Maximize Browser Window   