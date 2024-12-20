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

    # validate whether col number 2 contains  "Author".
    # here we have given locator of the table & then we specified the col number which is 2. & the value it should contains which is "Author" 
    Table Column Should Contain    css:table[name='BookTable']    2    Author
    Table Row Should Contain    css:table[name='BookTable']    3    Learn Java
    