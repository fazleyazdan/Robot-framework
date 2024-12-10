# we use timeout for a specific condition to met
# For example their is a register button, and we want to wait for that button for a specified time to appear.
# the default timeout is 5 secs. but you can increase or decrease it
 
*** Settings ***
Library    SeleniumLibrary 

*** Variables ***
${browser}    chrome
${url}    https://www.saucedemo.com/

*** Test Cases ***
Timeouts
    Open Browser    ${url}    ${browser}
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Element    id:login-button
    
    ${default_timeout}=    Get Selenium Timeout    # to know default or current timeout
    Log To Console    ${default_timeout}           # 5 secs

    Set Selenium Timeout    10 seconds
    
    # Wait Until Page Contains    Swag Labs1      # now we know this text does not exist, but just to test whether it waits for the specified time or not
    Wait Until Page Contains    Swag Labs       # after clicking logging button. swag labs text appear. so are waiting for it to appear in order to execute next statement
    Close Browser

    ${default_timeout}=    Get Selenium Timeout    
    Log To Console    ${default_timeout}           # 10 secs