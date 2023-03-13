*** Settings ***
Library           Selenium2Library

*** Test Cases ***
TC_pinterest
    Open Browser    https://www.pinterest.com/    chrome
    Maximize Browser Window
    Set Selenium Speed    1
    click element    xpath://*[@id="fullpage-wrapper"]/div[1]/div/div/div[1]/div/div[2]/div[3]/button/div/div
    Sleep    2
    Input text    xpath://*[@id="email"]    hristo_kkostovskii@yahoo.com
    Sleep    2
    Input text    xpath://*[@id="password"]    kostovski93
    Sleep    2
    Input text    xpath://*[@id="age-input"]    30
    click button    xpath://*[@id="__PWS_ROOT__"]/div/div[1]/div/div[2]/div/div/div/div/div[1]/div[5]/div/div[1]/form/div[8]/button
    Sleep    2
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[2]/div/div[2]/button/div
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[2]/div/fieldset/div/div[2]/div/label/div/div[2]
    Wait until page contains    Pick your language and country/region
    Select From List By Value    xpath://*[@id="newUserLanguage"]    en-US
    Select From List By Value    xpath://*[@id="newUserCountry"]    MK
    click button    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[3]/div/div[2]/button
    wait until page contains    Tell us what you're interested in
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[3]/div/div[3]/div/div[1]/div/div/div/div/div/div/div[2]/div[1]
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[3]/div/div[3]/div/div[2]/div/div/div/div/div/div/div[2]/div[1]
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[3]/div/div[3]/div/div[3]/div/div/div/div/div/div/div[2]/div[1]
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[3]/div/div[3]/div/div[4]/div/div/div/div/div/div/div[2]/div[1]
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[3]/div/div[3]/div/div[5]/div/div/div/div/div/div/div[2]/div[1]
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[3]/div/div[4]/div[2]/button/div
    click element    xpath://html/body/div[3]/div/div/div/div[2]/div/div/div/div[3]/div/div[2]/button

TC_Facebook
    Open Browser    https://www.facebook.com/    chrome
    Maximize Browser Window
    Sleep    2
    Click element    xpath://html/body/div[1]/div[1]/div[1]/div/div/div/div[2]/div/div[1]/form/div[5]/a
    Sleep    2
    Input text    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[1]/div[1]/div[1]/div/input    Hristijan
    Sleep    2
    Input text    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[1]/div[1]/div[2]/div/div[1]/input    Kostovski
    Sleep    2
    Input text    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[2]/div/div[1]/input    hristo_kostovskiii@yahoo.com
    Sleep    2
    Input text    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[3]/div/div/div[1]/input    hristo_kostovskiii@yahoo.com
    Sleep    2
    Input text    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[4]/div/div[1]/input    Kostovski93
    Sleep    2
    Select From List By Index    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[5]/div[2]/span/span/select[1]    1
    Select From List By Index    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[5]/div[2]/span/span/select[2]    15
    Select From List By Index    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[5]/div[2]/span/span/select[3]    30
    Sleep    2
    click button    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[7]/span/span[2]/input
    Sleep    2
    click element    xpath://html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[11]/button
    Sleep    2
    click element    name=More options
    Sleep    2

Mikel
    Open Browser    https://mikel.mk/?v=fbd1e7ba9564    chrome
    Maximize Browser Window
    Sleep    2
    Click link    MENU
    Sleep    2
    Click link    COFFEES
    Sleep    2
    Click link    COLD COFFEES
    click element    id:product_popup35421a252af
    Sleep    2
    click element    xpath://html/body/div[1]/div/div/div/div/div[2]/div/form/div[1]/div[1]/div/div[2]/div[3]
    Sleep    2
    click element    xpath://html/body/div[1]/div/div/div/div/div[2]/div/form/div[1]/div[2]/div/div[2]/div[4]
    Sleep    2
    click element    xpath://html/body/div[1]/div/div/div/div/div[2]/div/form/div[2]/div[2]/div[1]/div[1]/div[2]/label/span
