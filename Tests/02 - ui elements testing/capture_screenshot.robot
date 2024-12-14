*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
capture screenshots
    Open Browser    https://practice-automation.com/    chrome
    Maximize Browser Window
    
    Capture Element Screenshot    xpath://img[@alt='automateNow Logo']    C:/Users/Fazle Yazdan/Desktop/My_projects/Robot-framework/screenshots/element.png
    Capture Page Screenshot    C:/Users/Fazle Yazdan/Desktop/My_projects/Robot-framework/screenshots/page.png