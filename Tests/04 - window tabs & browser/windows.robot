# when we open a browser index number 1 is assigned to it
# when we open another browser then index 2 is assigned to it , and so on
# now to switch between multiple browser windows we use index number

# we can open many tabs
# the best way to switch between tabs is by their title

*** Settings ***
Library    SeleniumLibrary 


*** Test Cases ***
Handling Windows
    Open Browser    https://demo.automationtesting.in/Register.html    chrome     # index 1
    Maximize Browser Window
    
    Open Browser    https://www.selenium.dev/    chrome              # index 2
    Maximize Browser Window

    # i wanna switch to first browser which i have opened & perform some operations there
    Switch Browser    1
    Input Text    xpath://input[@placeholder="First Name"]    testing
    ${title}=    Get Title
    Log To Console    ${title}

    Sleep    4
    
    

    
    
    
