*** Settings ***
Documentation  Validate user can able to checkout
Library  SeleniumLibrary
Library  Collections

*** Variables ***


*** Test Cases ***
User Must sign in to check out
    [Documentation]  This is some basic info about test
    [Tags]  Smoke
    Open Browser  https://www.amazon.in/  chrome
    maximize browser window
    Wait Until Page Contains  Best Sellers
    Input Text  id=twotabsearchtextbox  ferrari 458
    Click Button  xpath=//div[@class='nav-search-submit nav-sprite']/input
    Wait Until Page Contains  ferrari 458
    Click Link  xpath=(//span[contains(text(), 'Ferrari 458 ')]/..)[1]
    sleep  3s
    @{Windowtitles}    Get Window Titles
    ${mainwindow}=    Get From List    ${Windowtitles}    0
    ${childwondow}=   Get From List   ${Windowtitles}   1
    log to console   the window name is ${mainwindow}
    log to console   the window name is ${childwondow}
    select window   ${childwondow}
    click button  id=add-to-cart-button
    sleep  2s
    Close Browser

