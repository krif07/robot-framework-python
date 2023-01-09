*** Settings ***
Documentation    Validate Radio buttons with robotframework
Library    SeleniumLibrary

*** Variables ***
${url} =            https://testingqarvn.com.es/
${browser} =        chrome
${practicas_qa_menu} =      xpath=//nav[@id='top-menu-nav']//a[contains(text(),'Prácticas QA')]
${menu_radio_buttons} =     xpath=//div/a[contains(text(),'Radio Buttons')]
${radio_buttons_radio_webdriverio_label} =    //label[text()='WebdriverIO']
${radio_buttons_radio_webdriverio} =    css=input[value='WebdriverIO']
${radio_buttons_radio_cypressio_label} =       //label[text()='CypressIO']
${checkbox_php} =   //label[text()='PHP']
${checkbox_python} =   //label[text()='PYTHON']


*** Test Cases ***
Validate radio buttons
    [Documentation]    Validate radio buttons
    [Tags]    radio_buttons
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    TestingQaRvn | Mundo del Testing
    click element    ${practicas_qa_menu}
    wait until element is visible    ${menu_radio_buttons}
    scroll element into view    ${menu_radio_buttons}
    click element    ${menu_radio_buttons}
    scroll element into view        ${radio_buttons_radio_webdriverio}
    click element    ${radio_buttons_radio_webdriverio_label}
    sleep    1
    click element    ${radio_buttons_radio_cypressio_label}
    sleep    1

Validate checkboxes
    [Documentation]    Validate checkboxes
    [Tags]    checkboxes
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    TestingQaRvn | Mundo del Testing
    click element    ${practicas_qa_menu}
    wait until element is visible    ${menu_radio_buttons}
    scroll element into view    ${menu_radio_buttons}
    click element    ${menu_radio_buttons}
    scroll element into view    ${checkbox_python}
    click element    ${checkbox_php}
    sleep    1
    click element    ${checkbox_python}
    click element    ${checkbox_php}
    sleep    1

*** Keywords ***
