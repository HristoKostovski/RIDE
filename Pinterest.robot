*** Settings ***
Library           Selenium2Library

*** Variables ***
${Login url}      https://www.pinterest.com/
${Browser}        chrome

*** Test Cases ***
TC
    Open Browser    ${Login url}    ${Browser}
    Maximize Browser Window
    login
    Sleep    2
    logout

*** Keywords ***
login
    click element    xpath://html/body/div[1]/div/div[1]/div/div/div/div/div/div/div[1]/div/div/div[1]/div/div[2]/div[2]/button/div/div
    Sleep    2
    input text    xpath://html/body/div[1]/div/div[1]/div/div[2]/div/div/div/div/div/div[4]/form/div[2]/fieldset/span/div/input    hristo_kkostovskii@yahoo.com
    Sleep    2
    input text    xpath://html/body/div[1]/div/div[1]/div/div[2]/div/div/div/div/div/div[4]/form/div[4]/fieldset/span/div/input    kostovski93
    Sleep    2
    click element    xpath://*[@id="__PWS_ROOT__"]/div/div[1]/div/div[2]/div/div/div/div/div/div[4]/form/div[7]/button/div

logout
    Sleep    2
    Mouse Down On Link    xpath://html/body/div[1]/div[1]/div[1]/div[2]/div/div/div[2]/div/div/div/div[4]/div[5]
    Sleep    2
    Mouse Down    xpath://html/body/div[1]/div[1]/div[1]/div[2]/div/div/div[2]/div/div/div/div[4]/div[6]/div/div/div/div/div[3]/div[9]/div/div/div[1]/div/div
