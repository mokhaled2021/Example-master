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
    sleep  1

Click button Add new Inistitutions
    Wait Until Page Contains Element     ${Add_Inistitutions}     timeout=10
    Click Element  ${Add_Inistitutions}
Fill field Institution Code
    Input Text    ${Institution_Code_Field}    ${Institution_Code}
    sleep  1
Fill field Institution Name
    Input Text    ${Institution_Name_Field}    ${Institution_Name}
    sleep  1
Select field Institutional Type
    Click Element    ${Institutional_Type_Field}
    Wait Until Element Is Visible    ${Institutional_Type_Selected}  timeout=10
    Click Element    ${Institutional_Type_Selected}
    sleep  1
Fill field Website
    Input Text    ${Website_Field}    ${Website}
    sleep  1
Fill field Email
    Input Text    ${Email_Field}    ${Email}
    Sleep    1
Select field Ownership
    Click Element    ${Ownership_Field}
    Wait Until Element Is Visible    ${Ownership_Selected}  timeout=10
    Click Element    ${Ownership_Selected}
    sleep  1
Fill field Location
    Input Text    ${Location_Field}    ${Location}
    Sleep    1
Fill field MOE Number
    Input Text    ${MOE_Number_Field}    ${MOE_Number}
    Sleep    1
Select field Time Zone
    Click Element    ${Time_Zone_Field}
    Wait Until Element Is Visible    ${Time_Zone_Selected}  timeout=10
    Click Element    ${Time_Zone_Selected}
    sleep  1
Select field Date of establishment
    Click Element    ${Date_of_establishment_Field}
    Wait Until Element Is Visible    ${Date_of_establishment_date}  timeout=10
    Click Element    ${Date_of_establishment_date}
    sleep  1

click submit button
    Click Element    ${Submit_Button}
    Wait Until Page Contains Element    ${Successfully_Saved}
    Sleep    2

Fill Form of Add Inistitutions
    Fill field Institution Code
    Fill field Institution Name
    Select field Institutional Type
    Fill field Website
    Fill field Email
    Select field Ownership
    Fill field Location
    Fill field MOE Number
    Select field Time Zone