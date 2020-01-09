*** Settings ***
Documentation  Verify that all elements and links works correct on the landing page
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
All links and elements appearance on landing page
    [Documentation]  Pics links text signin block
    [Tags]  landing page
    Begin Web Test
    Verify All info Links Works

    #Verify All Social Net Links Works

    #User Can Log In With Valid Data

    #User Can Not Log In With Invalid Data

    End Web Test

*** Keywords ***
Begin Web Test
    Open Browser  chrome

Verify All info Links Works
    Go To   https://test.webiomed.ru/
    Wait Until Page Contains  Webiomed
    Wait Until Page Contains  Система поддержки принятия врачебных решений
    Click Link  css=#app > div.container > div > div.info > div.section1 > a
    Wait Until Page Contains  Надежный цифровой ассистент врача для помощи в снижении заболеваемости и смертности
    Click Link  css=#app > div.container > div > div.info > div.section2 > div.link > a
    Wait Until Page Contains  Информация об использовании системы
    Wait Until Page Contains   ОБЩАЯ ИНФОРМАЦИЯ

Verify All Social Net Links Works

User Can Log In With Valid Data

User Can Not Log In With Invalid Data

End Web Test
    Close Browser