*** Keywords ***   

Open the Browser
    Open Browser                 ${Url}    ${Browser}
    Maximize Browser Window
    Set Browser Implicit Wait    15 seconds 

User is alowed to login to Hevo
    Input Text                   ${Email_Elem}    ${Email_Id}
    Click Button                 ${Login_Btn}
    Wait until page contains     ${Pwd_Txt}       
    Input Password               ${Pwd_Elem}      ${Pwd}
    Click Button                 ${Login_Btn}
    Log to console               ${Txt_01}

User is selecting Salesforce as source
    Wait until page contains     ${Dark_Mode_Txt}
    Press Keys    None   ESC
    Sleep   5
    Click Element                ${Pipeline_Label_Elem}    
    Click Element                ${Create_Btn}
    Page Should Contain          ${Select_Src_Txt}
    Click Element                ${Src_Elem}
    Log to console               ${Txt_02}

User is selecting a Salesforce account
    Page Should Contain          ${Config_Sf_Acc_Txt}
    Click Element                ${Sf_Acc_Elem}
    Click Button                 ${Continue_Btn01}
    Page Should Contain          ${Config_Sf_Src_Txt}
    Input Text                   ${Pipeline_Name_Elem}      ${Pipeline_Name}
    Click Button                 ${Continue_Btn02}
    Log to console               ${Txt_03}

User selects the objects to replicate
    Sleep   5
    Click Button                     ${Continue_Btn03}
    Wait Until Element Is Visible    ${Skip_Elem}
    Click Element                    ${Skip_Elem}

User selects snowflake as destination
    Page Should Contain           ${Select_Dst_Txt}
    Click Element                 ${Dst_Elem}
    Input text                    ${Tbl_Prefix_Elem}      ${Tbl_Prefix}
    Click Element                 ${Continue_Btn04}
    Log to console                ${Txt_04} 
    Log to console                ${Txt_05}

Close the Browser
    Close Browser
 