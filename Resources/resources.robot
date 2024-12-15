# resource file is where we keep reusable keywords

*** Settings ***
Library    SeleniumLibrary
    

*** Keywords ***
launch browser
    [Arguments]    ${url}    ${browser}            # here we have defined that this keyword will take 2 args        
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ${title}=    Get Title
    [Return]    ${title}   