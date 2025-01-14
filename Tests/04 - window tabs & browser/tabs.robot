# we can open many tabs
# the best way to switch between tabs is by their title

*** Settings ***
Library    SeleniumLibrary 
Library    Process


*** Test Cases ***
Handling tabs
    Open Browser    https://demo.automationtesting.in/Windows.html    chrome
    Maximize Browser Window
    Click Button    click            # when i click on the button, new tab opens
    
    Switch Window    title=Selenium
    ${title}=    Get Title   # here i am extracting its title
    Log To Console    ${title}
    
    Sleep    3

    Switch Window    title=Frames & windows    # i am switching back to the parent tab
    ${title}=    Get Title             # extracting title of the parent tab
    Log To Console    ${title}
    Sleep    2
    

    # now you can perform operations on any tab, all you have to do is to switch between them
    