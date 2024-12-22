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
# here i have called custom keyword "invalid login" in Test Template
# we use test template when we want to run multiple test cases for a keyword
# it is common to use in data driven testing


# here "username" & "password" are test headers. they are used if you wanna pass values with test cases names
*** Test Cases ***                    username        password
valid username and empty password    standard_user    ${EMPTY}    
invalid username and empty password    user    ${EMPTY}    
empty username and valid password    ${EMPTY}    secret_sauce
empty username and invalid password    ${EMPTY}    sauce
invalid username and invalid password    testing    sauce

# if you notice these are all the test names with parameters provided
# as you can see we have given 2 parameters for each test cases, because we have called custom keyword in test template...
# as you can see that keyword "invalid login" requires 2 arguments. that's why we have passed 2 params in each test case

*** Keywords ***
invalid login
    [Arguments]    ${username}    ${password}
    input username    ${username}
    input pswrd    ${password}
    click login button
    validate login failure


