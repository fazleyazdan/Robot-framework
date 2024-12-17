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
    @{items}    Create List    1    2    3    4
    
    FOR    ${i}    IN    @{items}
        Log To Console    ${i}

    END

    # For loop with strings
    FOR    ${i}    IN    ali    kamran    imran    
        Log To Console    ${i}
        
    END

