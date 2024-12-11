# in robot we can open multiple browsers at the same time

*** Settings ***
Library    SeleniumLibrary 
Library    Collections

*** Variables ***

*** Test Cases ***
Browsers Test
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window

    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window

#   Close Browser       # this statement will close the latest browser opened. it will not the all the browser.
    
    Close All Browsers  # this will close all browsers 