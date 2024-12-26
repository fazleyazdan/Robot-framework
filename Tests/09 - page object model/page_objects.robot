*** Comments ***
page object model is a design pattern which make reusability easier
also updating code is easier, we have to make changes in one place instead of doing it in multiple places
in POM will do is that we will keep the locators of page elements in one file & keywords used in tests will also be separate


*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/pom.robot


*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    chrome
${username}    standard_user
${password}    secret_sauce

*** Test Cases ***
page object model
    open the browser    ${url}    ${browser}
    enter username    ${username}
    enter password    ${password}
    click login btn
    verify successful login
