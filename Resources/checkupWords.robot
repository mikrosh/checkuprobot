*** Settings ***
Library  SeleniumLibrary
Resource  Resourses/PO/LandingPage.robot
*** Keywords ***

Open Marketing Page
    LandingPage.Load Webiomed
    Click Link  css=#app > div.container > div > div.info > div.section1 > a
    Wait Until Page Contains  Надежный цифровой ассистент врача для помощи в снижении заболеваемости и смертности

Open Info About System Page
    LandingPage.Load Webiomed
    Click Link  css=#app > div.container > div > div.info > div.section2 > div.link > a
    Wait Until Page Contains  Информация об использовании системы
    Page Should Contains   ОБЩАЯ ИНФОРМАЦИЯ
    Log Out

Admin Logged In
    LandingPage.Load Webiomed
    Input Text  xpath=//div[@class='form']//input[1]  admin  clear=true
    Input Text  xpath=//div[@class='form']//input[2]  RfryfVfhct  clear=true
    Click Button  xpath=//div[@class='btn']//button
    Wait Until page Contains  Анализ данных пациента
    Log Out

Log In With Invalid Data
    LandingPage.Load Webiomed
    Input Text  xpath=//div[@class='form']//input[1]  admin  clear=true
    Input Text  xpath=//div[@class='form']//input[2]  RfryfVfhct777  clear=true
    Click Button  xpath=//div[@class='btn']//button
    Wait Until Page Contains  Неправильно введено имя пользователя или пароль

Log Out
    Click Element  xpath=//div[@class='out']



