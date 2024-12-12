# first we have to enter frames --> perform some actions there --> then we have to get out of that frame

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handling frames
    Open Browser    https://ui.vision/demo/webtest/frames/    chrome
    Maximize Browser Window

    # you can select frame by name or by index or by any other locators
    Select Frame    xpath://frameset//frameset//frame[1]    # switch to frame 1
    Input Text    mytext2    testing frames
    Unselect Frame                            # move outside the frame

    Select Frame    xpath://frameset//frameset//frame[2]
    Input Text    mytext3    now in this frame
    Unselect Frame 
    Sleep    2
    