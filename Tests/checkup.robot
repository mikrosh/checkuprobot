*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
 Info Page Shoul Appearance
    [Tags]  Smoke
    Open Browser  http://webiomedcheckup-test.kmis.ru  chrome
    Wait Until Page Contains   Webiomed  Система поддержки принятия врачебных решений


*** Keywords ***
