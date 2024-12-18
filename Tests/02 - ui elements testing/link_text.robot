# 1: count number of links on web page
# 2: extract all links from page


*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Extracting links
    Open Browser    https://practicetestautomation.com/practice-test-login/    chrome
    Maximize Browser Window

    # here we have used robot method to count number of links & then stored it in a variable
    ${links_count}=    Get Element Count    xpath://a
    Log To Console    ${links_count}

    # now i want to extract text of these links as well & then display it on terminal
    # for that i will create an empty list first and then store all
    
    FOR    ${i}    IN RANGE    1    ${links_count}    
        ${link_text}=    Get Text    xpath:(//a)[${i}]
        Log To Console    ${link_text}

    END

    # here we are looping from 1 to the number links counts
    # syntax in robot if you wanna parameterize xpath , is to wrap xpath in parentheses
    # so we when ${i} is 1 , we will extract text of the first link & so on... 