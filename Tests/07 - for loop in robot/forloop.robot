*** Settings ***

*** Test Cases ***
for loop usage
    # here this will print from 1 to 9 on new line
    FOR    ${i}    IN RANGE    1    10
        Log To Console    ${i}
    
    END

    # you can also use for loop like this. when you separate numbers by 1 space it will print all number on single line
    FOR    ${i}    IN    1 2 3 4 5
        Log To Console    ${i}

    END

    # you can also use for loop like this. when you separate numbers by double spaces it will print all number on new line
    FOR    ${i}    IN    1  2  3  4  5
        Log To Console    ${i}

    END

    # we can also use for loop by using number from list. first we will create list
    @{items}    Create List    1    2    3    4    5    6    7
    
    FOR    ${i}    IN    @{items}
        Log To Console    ${i}

    END

    # For loop with strings. you can also store strings in list & then loop through it. like we did with numbers
    FOR    ${i}    IN    ali    kamran    imran    
        Log To Console    ${i}
        
    END

    # exit criteria: for loop will exit when certain condition is met. as soon as the i==3 it will exit.
    FOR    ${i}    IN    @{items}
        Log To Console    ${i}
        Exit For Loop If    ${i}==3

    END
    