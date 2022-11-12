*** Settings ***
Library     SeleniumLibrary
Resource    ../AcademicStructure/Login.robot
Variables    ../TestData/TestData.py
Variables   ../Locators/locators.py

*** keywords***
Open the AcademicStructure page
    Click Element    ${Academic_Structure}

Open the Institution page
    Wait Until Element Is Visible    ${Institution}
    Click Element    ${Institution}

Click button Add new Inistitutions
    Wait Until Page Contains Element     ${Add_Inistitutions}     timeout=10
    Click Element  ${Add_Inistitutions}
Fill field Institution Code
    Input Text    ${Institution_Code_Field}    ${Institution_Code}
Fill field Institution Name
    Input Text    ${Institution_Name_Field}    ${Institution_Name}
Select field Institutional Type
    Click Element    ${Institutional_Type_Field}
    Wait Until Element Is Visible    ${Institutional_Type_Selected}   timeout=10
    Click Element    ${Institutional_Type_Selected}
Fill field Website
    Input Text    ${Website_Field}    ${Website}
Fill field Email
    Input Text    ${Email_Field}    ${Email}
Select field Ownership
    Click Element    ${Ownership_Field}
    Wait Until Element Is Visible    ${Ownership_Selected}  timeout=10
    Click Element    ${Ownership_Selected}
Fill field Location
    Input Text    ${Location_Field}    ${Location}

Fill field MOE Number
    Input Text    ${MOE_Number_Field}    ${MOE_Number}

Select field Time Zone
    Click Element    ${Time_Zone_Field}
    Wait Until Element Is Visible    ${Time_Zone_Selected}  timeout=10
    Click Element    ${Time_Zone_Selected}
Select field Date of establishment
    Click Element    ${Date_of_establishment_Field}
    Wait Until Element Is Visible    ${Date_of_establishment_date}  timeout=10
    Click Element    ${Date_of_establishment_date}

click submit button
    Wait Until Page Contains Element    ${Submit_Button}
    Click Element    ${Submit_Button}
    Wait Until Page Contains Element    ${Successfully_Saved}

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