*** Settings ***
Documentation    Validate Title with robotframework
Library    SeleniumLibrary

*** Variables ***
${url} =            http://demoqa.com/text-box
${browser} =        chrome
${title} =          ToolsQA
${input_name} =     id=userName
${label_name} =     id=userName-label
${input_current_addres} =         id=currentAddress

*** Test Cases ***
Validate title one
    [Documentation]    Validate page title
    [Tags]    validate_title
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    ToolsQA

Validate input visibility and element text
    [Documentation]    Validate input visibility and element text
    [Tags]    input_visibility
    open browser    ${url}  ${browser}
    maximize browser window
    element text should be    ${label_name}   Full Name
    element should be visible    ${input_name}
    input text    ${input_name}     Cristian Dávila

Validate by attribute
    [Documentation]    Validate by attribute
    [Tags]    input_attribute
    open browser    ${url}  ${browser}
    maximize browser window
    element attribute value should be    ${input_current_addres}    placeholder     Current Address
    input text    ${input_name}     Cristian Dávila
    input text    ${input_current_addres}   This is my direction

*** Keywords ***
