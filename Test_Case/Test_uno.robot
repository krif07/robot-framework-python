*** Settings ***
Library    SeleniumLibrary
Documentation    Example project to test Robotframework
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Test Uno Web Browser
    [Documentation]    First test in the system
    [Tags]    testone
    open browser    http://demoqa.com/text-box  chrome
    maximize browser window
    sleep    2
    input text    id=userName           Cristian Dávila
    input text    id=userEmail          krif07@gmail.com
    input text    id=currentAddress     Mi dirección
    input text    id=permanentAddress   Dirección permanente

    sleep    2
    execute javascript    window.scrollTo(0, 200)
    sleep    2
    click button    id=submit

    close browser

Test Two Web Browser
    [Documentation]    Second test in the system
    [Tags]    testtwo
    open browser    http://demoqa.com/text-box  chrome
    maximize browser window
    sleep    2
    input text    id=userName           Cristian Dávila
    input text    id=userEmail          krif07@gmail.com
    input text    id=currentAddress     Mi dirección
    input text    id=permanentAddress   Dirección permanente

    click button    id=submit

    close browser

*** Keywords ***
