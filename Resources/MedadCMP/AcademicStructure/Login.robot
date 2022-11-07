*** Settings ***
Library     SeleniumLibrary
Resource    ../AcademicStructure/common.robot
Variables   ../Locators/locators.py
Variables   ../TestData/TestData.py

*** Keywords ***

User Login 
    [Arguments]                    ${username}                    ${password}
    Opening Browser                ${site_url}${login}            ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible  ${Username_field}  timeout=10
    Input Text                     ${Username_field}  ${username}
    Input Text                     ${password_field}  ${password}
    Press Keys  ${password_field}   ENTER
    Wait Until Element Is Visible        ${Home}                  timeout=10
