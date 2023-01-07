*** Settings ***
Documentation    Example project to test variables in Robotframework
Library    SeleniumLibrary

*** Variables ***
${url} =           http://demoqa.com/text-box
${browser} =       chrome
${name} =          Cristian Dávila
${email} =         krif07@gmail.com
${direction} =     Mi dirección
${permanentDirection} =     Dirección permanente

*** Test Cases ***
Test variables practice one
    [Documentation]    Demo to practice variables
    [Tags]    variables_demo
    open browser    ${url}  ${browser}
    maximize browser window
    sleep    2
    input text    id=userName           ${name}
    input text    id=userEmail          ${email}
    input text    id=currentAddress     ${direction}
    input text    id=permanentAddress   ${permanentDirection}

    sleep    2
    execute javascript    window.scrollTo(0, 200)
    sleep    2
    click button    id=submit

    close browser

*** Keywords ***
