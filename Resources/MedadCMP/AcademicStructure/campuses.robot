*** Settings ***
Library     SeleniumLibrary
Resource    ../AcademicStructure/Login.robot
Resource    ../AcademicStructure/common.robot
Variables    ../TestData/TestData.py
Variables   ../Locators/locators.py

*** keywords***

Open the Cumpuses page
    Wait Until Page Contains Element    ${Campuses_Link}
    Click Element    ${Campuses_Link}

Click button Add new campuses
    Wait Until Page Contains Element     ${Add_Campuses}     timeout=10
    Click Element  ${Add_Campuses}
    sleep   3
Fill field Campus Name
    Input Text Into Alert   ${Campus_name_field}    ${Campus_name}
Fill field Campus Code
    Input Text Into Alert    ${campus_code_field}    ${Campus_code}
Fill field campus Location
    Input Text Into Alert    ${campus_location_field}    ${Campus_location}
click submit Campus
    Wait Until Page Contains Element    ${Submit_Campus}
    Click Element    ${Submit_Campus}
Fill Form of Add campuses
    Fill field Campus Name
    Fill field Campus Code
    Fill field campus Location
