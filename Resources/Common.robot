*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  chrome

End Web Test
    Close Browser

Insert Testing Data
    Log  I am setting up data

Cleanup Testing Data
    Log  I am cleanup data