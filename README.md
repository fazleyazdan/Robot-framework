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