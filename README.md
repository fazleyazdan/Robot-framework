# What is Robot Framework?
* **Robot Framework** is an open-source automation framework primarily used for **acceptance testing**, **acceptance test-driven development (ATDD)**, and **robotic process automation (RPA)**.
* it supports **keyword-driven testing**, making it highly extensible and easy to use for non-developers and developers alike.

# Test Cases - Selenium Vs Robot Framework:
![Test Cases](./images/testcasescomp.png)

# Structure of Robot File :

Every Robot File contains 4 Sections, They are ...

```robot

*** Settings ***
Here we import libraries

*** Variables ***
Here we define variables which are repetitive & used across multiple test cases

*** Test Cases ***
Here we write test cases, it can be single or multiple

*** Keywords ***
Here we can define custom keywords.

```

# Syntax :

**Note :** Every element or keyword & their values are separated by a **Tab**

**Simple Test Case**
```robot
*** Settings ***
Library    SeleniumLibrary 

*** Variables ***

*** Test Cases ***
LoginTest
    Open Browser    https://www.saucedemo.com/    chrome
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Element    id:login-button
    Close Browser
```

**Usage of Variable & Keyword**

```robot
*** Settings ***
Library    SeleniumLibrary 

*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    chrome

# variable names are enclosed in curly braces having $ at the start.
# Then value of these variable are in front of them separated by a Tab

*** Test Cases ***
LoginTest
    LoginToApp

*** Keywords ***

# Here we create custom keywords & then their functionality
# For example here we can make a custom keyword "LoginToApp" having functionality to login to App.

LoginToApp
    Open Browser    https://www.saucedemo.com/    chrome
    Open Browser    ${url}    ${browser}
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Element    id:login-button
    Close Browser

# As you can see we have called that keyword above in a **Test Case**.
```
