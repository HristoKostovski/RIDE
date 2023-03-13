*** Settings ***
Library           Selenium2Library

*** Test Cases ***
TC_1
    Open Browser    https://www.w3schools.com/    Chrome
    Sleep    2
    Maximize Browser Window
    Input Text    id:search2    Selenium Tutorial
    Click Button    id:learntocode_searchbtn

TC_2
    Open Browser    https://www.w3schools.com/    Chrome
    Sleep    2
    Maximize Browser Window
    Input Text    id:search2    HTML Tutorial
    Click Button    id:learntocode_searchbtn

TC_3
    Open Browser    https://www.w3schools.com/    Chrome
    Sleep    2
    Maximize Browser Window
    Input Text    id:search2    CSS Tutorial
    Click Button    id:learntocode_searchbtn
