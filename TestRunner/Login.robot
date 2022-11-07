*** Settings ***
Documentation  MedadCMP LoginPage
Library  SeleniumLibrary
Resource  ../Resources/MedadCMP/AcademicStructure/Login.robot


*** Test Cases ***
Login with Valid Username & Password
    User Login                      ${username}              ${password}
    Wait Until Element Is Visible   ${Home}             timeout=10
    sleep  10