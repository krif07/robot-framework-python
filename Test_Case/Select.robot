*** Settings ***
Documentation    Example project to test Selects in Robotframework
Library    SeleniumLibrary

*** Variables ***
${url} =            https://testingqarvn.com.es/
${browser} =        chrome
${practicas_qa_menu} =      xpath=//nav[@id='top-menu-nav']//a[contains(text(),'Prácticas QA')]
${menu_select} =    xpath=//div/a[contains(text(),'ComboBox')]
${select_locator} =     //select[@id='wsf-1-field-53']
${select_title_label} =     (//div[@data-type="select"]/label)[1]

*** Test Cases ***
Validates Select in rf
    [Documentation]    Demo test selects
    [Tags]    selects
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    TestingQaRvn | Mundo del Testing
    click element    ${practicas_qa_menu}
    wait until element is enabled    ${menu_select}
    scroll element into view    ${menu_select}
    click element    ${menu_select}
    scroll element into view    ${select_locator}
    element should contain    ${select_title_label}   Sistema operativo
    select from list by label    ${select_locator}   Linux
    sleep    1
    select from list by value    ${select_locator}   Mac
    sleep    1
    select from list by index    ${select_locator}  0
    sleep    1


*** Keywords ***
