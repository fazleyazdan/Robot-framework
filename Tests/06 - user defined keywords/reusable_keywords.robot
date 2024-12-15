# since keyword defined in test case are only usable for that test case
# to make it reusable we keep them inside resource.robot file
# here we have kept the keyword from previous test case which launch browser & then return its title

*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/resources.robot


*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    chrome

*** Test Cases ***
using resource file
    ${pageTitle}=    launch browser    ${url}    ${browser}
    Log To Console    ${pageTitle}