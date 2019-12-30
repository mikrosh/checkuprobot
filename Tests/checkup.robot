*** Settings ***
Documentation  Verify that all elements and links works correct on the landing page
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
All links and elements appearance on the page
    [Documentation]  Pics links text signin block
    [Tags]  smoke
    Open Browser  https://www.google.com/  chrome
    Sleep  3s
    Close Browser
*** Keywords ***
