*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Mouse actions
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    Maximize Browser Window

    # right click
    Open Context Menu    css:.context-menu-one.btn.btn-neutral
    Sleep    2

    # double click
    Go To    https://testautomationpractice.blogspot.com/
    Double Click Element    css:button[ondblclick='myFunction1()']
    Sleep    2

    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Drag And Drop    id:box6    id:box106
    Sleep    2
