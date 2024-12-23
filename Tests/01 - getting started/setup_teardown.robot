# Suit Setup: will run once before test suit
# Suit Teardown: will run once after test suit 
# Test Setup: will run before every test case
# Test Teardown : will run after every test case

*** Settings ***
Suite Setup    Log To Console    setting up test suit
Suite Teardown    Log To Console    tearing down test suit  
Test Setup    Log To Console    login to app 
Test Teardown    Log To Console    log out from app 


*** Test Cases ***
Test case 1
    Log To Console    This is test case 1

Test case 2
    Log To Console    This is test case 2

Test case 3
    Log To Console    This is test case 3

