# here we will test Dropdowns
# There are 3 ways we can select dropdowns
# by label , value or by index
# by inspecting html of the element you can use any of the above to select the dropdown
# i will add some delays here for better observations when running tests on UI mode

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handling drop downs & list boxes
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Select From List By Label    id:country    Japan
    Sleep    2
    Select From List By Value    id:country    canada
    Sleep    1

    # list boxes
    Select From List By Label    id:colors    Green
    Select From List By Label    id:colors    Blue
    Select From List By Label    id:colors    Yellow
    Sleep    2
    Unselect From List By Label    id:colors    Blue

    Sleep    2
    Close Browser                