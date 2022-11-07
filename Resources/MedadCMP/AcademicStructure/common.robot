*** Settings ***
Library     SeleniumLibrary
Resource    ../AcademicStructure/Login.robot
Variables   ../Locators/locators.py
Variables   ../TestData/TestData.py

*** Variables ***
${site_url}     https://sis.medadstg.com
${login}        /#login
${browser}      Chrome

*** Keywords ***
Opening Browser
    [Arguments]  ${site_url}  ${browser}
    Open Browser  ${site_url}  ${browser}
    Wait Until Element Is Visible  ${Username_field}  timeout=10
    Title Should Be  Login

closing Browser
    close Browser