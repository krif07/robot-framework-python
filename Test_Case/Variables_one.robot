*** Settings ***
Documentation    Example project to test Variables in Robotframework
Library    SeleniumLibrary

*** Variables ***
${name}             =   Cristian Fernando
${lastName}         =   Dávila
${motherLastName}   =   López

*** Test Cases ***
Test demo variables one
    [Documentation]    Demo test documentation
    [Tags]    variablesone
    Log    My name is ${name}
    Log    ${name} ${lastName}

Test demo variables two
    [Documentation]    Demo test documentation
    [Tags]    variablestwo
    Log    My last name is ${lastName}
    Log    ${name} ${lastName} ${motherLastName}
    ${direction}    set variable    Km 10 vía Armenia Casa
    Log To Console    ${direction}
    Log     ${direction}

Test demo variables sum
    [Documentation]    Sum two variables
    [Tags]  sum
    ${a}    set variable    8
    ${b}    set variable    7
    Log To Console    ${a}
    Log To Console    ${b}
    ${c}    evaluate    ${a} + ${b}
    ${d}    evaluate    ${a} * ${b}
    log to console    ${c}
    log to console    ${d}
    Log     ${c}
    Log     ${d}


*** Keywords ***
