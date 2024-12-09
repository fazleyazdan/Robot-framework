# here we will test radio buttons & checkboxes

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handling Radio Buttons & checkboxes
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    2seconds              # all statements will be executed after 2 seconds of delay
    Select Radio Button    gender    male       # to select radio buttons you have to give value of 'name' & 'value' attribute. inspect the element & you will see it
    Select Checkbox    id:sunday
    Select Checkbox    id:thursday
    Unselect Checkbox    id:sunday              # unselect checkboxes
    Close Browser                
