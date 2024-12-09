# here we will test input boxes & perform different validations on it

*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Variables ***
${browser}    chrome
${url}    https://www.saucedemo.com/

*** Test Cases ***
TestInputBoxes
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ${"username_box"}    Set Variable    id:user-name              # we can also create variables here for reusability
    Input Text    ${"username_box"}    standard_user
    Element Should Be Visible    ${"username_box"}
    Element Should Be Enabled    ${"username_box"}
    Sleep    3                                         # added 3s delay   
    Clear Element Text    ${"username_box"}            # remove text from input box
    Sleep    3
    Close Browser