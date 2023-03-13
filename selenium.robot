*** Settings ***
Library           Selenium2Library

*** Variables ***
${LOGIN URl}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}        chrome

*** Test Cases ***
tc
    login
    Sleep    2
    logout
    Close Browser

*** Keywords ***
login
    Open Browser    ${LOGIN URl}    ${BROWSER}
    Sleep    2
    Input Text    xpath=//input[@name="username"]    Admin
    Sleep    2
    Input Text    xpath=//input[@name="password"]    admin123
    Click Button    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button

logout
    Sleep    2
    Click Element    xpath=//*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/span/p
    Sleep    2
    Click Element    xpath=//*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/ul/li[4]/a
