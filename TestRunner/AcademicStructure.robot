*** Settings ***
Documentation  MedadCMP LoginPage
Library  SeleniumLibrary
Resource  ../Resources/MedadCMP/AcademicStructure/Login.robot
Resource  ../Resources/MedadCMP/AcademicStructure/Inistitutions.robot
Resource  Login.robot
Test Teardown   closing Browser


*** Test Cases ***
Add new Inistitutions
    User Login  ${username}  ${password}
    Open the AcademicStructure page
    Open the Institution page
    Click Element  ${Add_Inistitutions}

    
