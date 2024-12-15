# we can have keywords with return statements as well
# in the launch browser keyword, we wanna add that it also return title of the page

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    chrome

*** Test Cases ***
keyword with arguments
    ${pageTitle}=    launch browser    ${url}    ${browser}
    Log To Console    ${pageTitle}
    

*** Keywords ***
launch browser
    [Arguments]    ${url}    ${browser}            # here we have defined that this keyword will take 2 args        
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ${title}=    Get Title
    [Return]    ${title}   