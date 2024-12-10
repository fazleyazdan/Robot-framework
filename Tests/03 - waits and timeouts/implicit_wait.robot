# suppose there are multiple statements, & one of the statements takes time or its locator is wrong
# now when this test execute & if the statements locator is not found or if its text takes some time to appear..
# then this test will stop executing immediately and will terminate
# now to handle those kind of situations we use "implicit waits"
# implicit waits applies to all statements that comes after it
# by default it is 0s. but you can set implicit wait of your choice
# suppose the implicit wait is 10 sec and the element is found within 3s, then it will not wait for 10s and the next statements will start executing.
 
*** Settings ***
Library    SeleniumLibrary 

*** Variables ***
${browser}    chrome
${url}    https://www.saucedemo.com/

*** Test Cases ***
Timeouts
    
    ${default_implicit}=    Get Selenium Implicit Wait    # to know default implicit wait
    Log To Console    ${default_implicit}            # 0s

    Set Selenium Implicit Wait    10 seconds
    
    ${default_implicit}=    Get Selenium Implicit Wait
    Log To Console    ${default_implicit}            # 10s
    
    
    Open Browser    ${url}    ${browser}
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Element    id:login-button
#   Click Element    id:login-button1        # now that locator does not exist. now we will wait 10 secs for it to appear. 
    
    Close Browser