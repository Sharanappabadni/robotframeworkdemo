*** Settings ***
Documentation  This is just check how browsers works
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***


*** Test Cases ***
Guest must login to check
    [Documentation]  Presenting some documentation abpout this project
    [Tags]  Smoke
    Open Browser  https://www.amazon.in    chrome
    Sleep  3s
    Close Browser