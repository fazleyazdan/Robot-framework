# we will use javascript executor for scrolling
# we can do scrolling 3 ways
# 1: scroll until a specified pixel
# 2: scroll until certain element is reached
# 3: scroll till bottom of the page

*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
scrolling page
    Open Browser    https://scrollmagic.io/    chrome
    Maximize Browser Window
    
    Sleep    2
    Execute Javascript    window.scrollTo(0,2000)
    # here 0 represents horizontal & 2000 represents vertical scrolling. here we are only doing vertical scrolling

    Sleep    2
    Scroll Element Into View    xpath://h3[normalize-space()='Credits']    # scroll till credits element

    