*** Settings ***
Documentation  Verify that all elements and links works correct on the landing page
Resource  /Resourses/checkupWords.robot
Resource  /Resources/Common.robot
Suite Setup  Insert Testing Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Cleanup Testing Data
*** Variables ***


*** Test Cases ***
All links and elements appearance on landing page
    [Documentation]  Pics links text signin block
    [Tags]  landing page
    checkupWords.Load Webiomed
    checkupWords.Open Marketing Page
    checkupWords.Open Info About System Page
    checkupWords.Log In With Invalid Data
    checkupWords.Admin Logged In




