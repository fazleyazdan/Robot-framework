# to use data from excel file , we have to use a library called robotframework-datadriver

*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    file=../Test Data/data_excel.xlsx
# Library    DataDriver    file=../Test Data/data_excel.xlsx    sheet_name=sheet1  --- you can specify sheet name if data is not on first sheet of file
Resource    ../../Resources/data_driven.robot

Suite Setup    open my browser
Suite Teardown    closing browser  
Test Template    login with wrong credentials


*** Test Cases ***
Trying to login  using  ${username} and ${password}
# and is built in keyword to chain statements.
# here this test cases will be executed 3 times. since there are 3 sets of data in excel file
# each time a test execute the username & password fetched from excel file will be shown on terminal. 
# e.g: Trying to login with    user1    admin123

*** Keywords ***
login with wrong credentials
    [Arguments]    ${username}    ${password}
    input username    ${username}
    input pswrd    ${password}
    click login button
    validate login failure