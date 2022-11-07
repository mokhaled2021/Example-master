*** Settings ***
Library     SeleniumLibrary
Resource    ../AcademicStructure/Login.robot
Variables   ../Locators/locators.py
Variables   ../TestData/TestData.py

*** keywords***


Open the AcademicStructure page
    Click Element    ${Academic_Structure}

Open the Institution page
    Wait Until Element Is Visible    ${Institution}
    Click Element    ${Institution}
    Wait Until Page Contains Element     ${Add_Inistitutions}     timeout=10
    sleep  2