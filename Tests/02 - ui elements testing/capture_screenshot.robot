*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
capture screenshots
    Open Browser    https://practice-automation.com/    chrome
    Maximize Browser Window
    
    # when capturing screenshot of specific element we will give 2 parameters. first locator of element & the location where we wanna save it
    # when capturing screenshot of the page, we just have to give it location where we wanna save it
    Capture Element Screenshot    xpath://img[@alt='automateNow Logo']    C:/Users/Fazle Yazdan/Desktop/My_projects/Robot-framework/screenshots/element.png
    Capture Page Screenshot    C:/Users/Fazle Yazdan/Desktop/My_projects/Robot-framework/screenshots/page.png