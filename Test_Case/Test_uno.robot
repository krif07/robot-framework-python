*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Test Uno Web Browser
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

*** Keywords ***
