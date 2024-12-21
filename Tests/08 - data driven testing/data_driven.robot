# test driven by data : tests driven by combination data to validate app functionality
# we can either specify test data in a script
# or we can also read data from excel and csv files
# in this test we will do ddt by specify test data in a script
# for this test i will create resource file where i will be keeping reusable methods.
# resource file is just like a fixture file or think of it as page object.


*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/data_driven.robot
Suite Setup    open my browser
Suite Teardown    closing browser
Test Template    invalid login


*** Test Cases ***                    username        password
valid username and empty password    standard_user    ${EMPTY}    
invalid username and empty password    user    ${EMPTY}    
empty username and valid password    ${EMPTY}    secret_sauce
empty username and invalid password    ${EMPTY}    sauce
invalid username and invalid password    testing    sauce


*** Keywords ***
invalid login
    [Arguments]    ${username}    ${password}
    input username    ${username}
    input pswrd    ${password}
    click login button
    validate login failure


