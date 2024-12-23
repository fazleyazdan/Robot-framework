# when you have multiple tests in a file & you want to execute selective tests among them then we use tagging
# we tag tests with & then at the run time when executing the test we specify that tag to run selective test cases
# syntax to run test file with tags : robot --include=tag_name <path of test file>
# if you wanna tests with multiple tags : robot -i sanity -i regression <path of test file>
# the above command will execute tests having "sanity" & "regression" tag
# if you wanna exclude tests having tags : robot -e sanity <path of test file>
# the above command will exclude tests having "sanity" tag

*** Settings ***

*** Test Cases ***
TC1 Registration
    [Tags]    Regression
    Log To Console    user is registered
    Log To Console    Registration test is finished

TC2 Login to app
    [Tags]    Sanity
    Log To Console    user has logged in
    Log To Console    Login test is finished

TC3 Browsing the app 
    [Tags]    Regression
    Log To Console    user is browsing the app
    Log To Console    Browsing test case is finished

TC4 Logout from app
    [Tags]    Sanity
    Log To Console    user is logging out from the app
    Log To Console    Logout test is finished