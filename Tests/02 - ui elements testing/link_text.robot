# 1: count number of links on web page
# 2: extract all links from page


*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Extracting links
    Open Browser    https://practicetestautomation.com/practice-test-login/    chrome
    Maximize Browser Window

    # here we have used robot method to count number of links & then stored it in a variable
    # you can count any elements via this method on a web page
    ${links_count}=    Get Element Count    xpath://a
    Log To Console    ${links_count}

    # now i want to extract text of these links as well & then display it on terminal
    # for that i will create an empty list first and then store all
    # if you are starting from 1, make sure to add with the range, because it does not count the last number
    
    FOR    ${i}    IN RANGE    1    ${links_count}+1    
        ${link_text}=    Get Text    xpath:(//a)[${i}]
        Log To Console    ${link_text}

    END

    # here we are looping from 1 to the number links counts
    # syntax in robot if you wanna parameterize xpath , is to wrap xpath in parentheses
    # so we when ${i} is 1 , we will extract text of the first link & so on... 