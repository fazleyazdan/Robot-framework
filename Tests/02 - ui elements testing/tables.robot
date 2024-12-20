# here we will do the following things
# 1: count num of rows & cols in a table
# 2: extract data from the table rows & cols
# 3: validation on specific row, col to check whether it contains specified data
# 4: validation on table header & cells to validate whether it contains specified data

*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Test Cases ***
Web Tables
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    
    # count rows & cols
    ${rows_count}=    Get Element Count    css:table[name='BookTable']>tbody>tr
    ${cols_count}=    Get Element Count    css:table[name='BookTable']>tbody>tr>th
    
    Log To Console    ${rows_count}
    Log To Console    ${cols_count}

    # get data from any element in the table. get data from 5 row & 1st col
    ${row_text}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    Log To Console    ${row_text}
    
    # validate whether col number 2 contains  "Author".
    # here we have given locator of the table & then we specified the col number which is 2. & the value it should contains which is "Author" 
    Table Column Should Contain    css:table[name='BookTable']    2    Author
    Table Row Should Contain    css:table[name='BookTable']    3    Learn Java
    Table Header Should Contain    css:table[name='BookTable']    Subject
    Table Cell Should Contain    css:table[name='BookTable']    5    3    Selenium

    # for the cells we have given 4 arguments
    # the first is the table locator, 5 is the row, 3 is the col & Selenium is the data we expect to be in that cell

    Close Browser