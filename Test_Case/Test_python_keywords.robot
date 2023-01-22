*** Settings ***
Documentation    Example project to test python keywords
...              robot -d ..\reports -i python_keywords .\Test_Case\Test_python_keywords.robot

Library    SeleniumLibrary
Library    ../keywords/Keywords_Python.py

*** Variables ***

*** Test Cases ***
Validate Python Keywords
    [Documentation]    Testing python keywords
    [Tags]    python_keywords
    Log To Console    Create Folder With Python
    Create Folder With Python
    Create Sub Folder With Python    MiSubFolder
    Concatenate Name    Cristian Fernando   Dávila López    TAE


*** Keywords ***
Create Folder With Python
    Create_Folder

Create Sub Folder With Python
    [Arguments]    ${folder_name}
    Create_Sub_Folder   ${folder_name}

Concatenate Name
    [Documentation]     To Concatenate a full name
    [Arguments]         ${first_name}    ${last_name}    ${title}
    ${complete_name}=   Concat_Name        ${first_name}    ${last_name}    ${title}
    Log To Console      ${complete_name}
    Log    ${complete_name}