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
    sleep  3
    Open the AcademicStructure page
    sleep  3
    Open the Institution page
    sleep  3
    Click Element  ${Add_Inistitutions}
    sleep  3

    
