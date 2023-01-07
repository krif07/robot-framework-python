*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Test Uno Web Browser
    open browser    http://demoqa.com/text-box  chrome
    maximize browser window
    sleep    5
    close browser

*** Keywords ***
