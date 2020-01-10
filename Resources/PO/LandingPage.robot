*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load Webiomed
    Go To  https://test.webiomed.ru
    Wait Until Page Contains  Webiomed
    Page Should Contain Element  xpath=//div[@class='form']