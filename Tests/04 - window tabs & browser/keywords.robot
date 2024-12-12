# keywords for navigation
# get location is used to capture url of the web page
# go to : is used to open another url on the same tab
# go back : go back to the parent url


*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Navigation Keywords
    Open Browser    https://www.google.com/    chrome
    Maximize Browser Window

    ${loc}=    Get Location
    Log To Console    ${loc}        # will print google url

    Sleep    3

    Go To    https://www.bing.com/ 
    ${loc}=    Get Location
    Log To Console    ${loc}        # will print bing url
    
    Sleep    3
    
    Go Back
    ${loc}=    Get Location
    Log To Console    ${loc}        # will print google url, because we are back to it
   
