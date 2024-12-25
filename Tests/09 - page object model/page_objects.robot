# page object model is a design pattern which make reusability easier
# also updating code is easier, we have to make changes in one place instead of doing it in multiple places
# in POM will do is that we will keep the locators of page elements in one file & keywords used in tests will also be separate


*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/pom.robot
Resource    ../../Resources/data_driven.robot


*** Test Cases ***
page object model
    open the browser    https://www.saucedemo.com/    chrome
    input username_txt    standard_user
    input password_txt    secret_sauce
    click login btn
    verify successful login
