***Variables***

#Locators for pipeline creation
${Browser} =                gc
${Url} =                    https://beta.hevo.me/
${Email_Elem} =             xpath://input[@type='email']
${Email_Id} =               test@training.com
${Pwd_Elem} =               xpath://input[@type='password']
${Pwd} =                    password123
${Pwd_Txt} =                Enter password
${Login_Btn} =              xpath://button[@type='submit']
${Txt_01} =                 Login is successful
${Dark_Mode_Txt} =          Hevo now has a Dark Mode
${Pipeline_Label_Elem} =    xpath://a[@iconname='pipeline']
${Create_Btn} =             xpath://button[@class='btn btn-sm btn-primary btn-thumbnail-left ml-3']
${Select_Src_Txt} =         Select Source Type
${Src_Elem} =               xpath://div[text()=' Salesforce ']
${Txt_02} =                 Salesforce as a source is selected
${Config_Sf_Acc_Txt} =      Configure your Salesforce account
${Sf_Acc_Elem} =            xpath://div[text()=' akash@moolya.com ']
${Continue_Btn01} =         xpath://button[@class='btn btn-primary']
${Config_Sf_Src_Txt} =      Configure your Salesforce Source
${Pipeline_Name_Elem} =     xpath://input[@name='source-name']
${Pipeline_Name} =          Pipeline01
${Txt_03} =                 Salesforce account is selected
${Continue_Btn02} =         xpath://button[@class='btn btn-primary submit-btn']
${Continue_Btn03} =         xpath://button[@class='btn btn-primary ml-5']
${Skip_Elem} =              xpath://button[@class='text-link thumbnail-right ng-star-inserted']
${Select_Dst_Txt} =         Select Destination
${Dst_Elem} =               xpath://div[text()=' Snowflake01 ']
${Tbl_Prefix_Elem} =        xpath://input[@placeholder='Enter Destination Table Prefix']
${Tbl_Prefix} =             table01
${Continue_Btn04} =         xpath://button[@class='btn btn-primary submit-btn']
${Txt_04} =                 Snowflake as a destination is selected
${Txt_05} =                 Pipeline is created.

#Locators to verify the data at destination
${Dest_Label_Elem} =        xpath://a[@iconname='destinations']
${Txt_06} =                 User navigates to destination
${Dest_Elem} =              xpath://span[text()=' #5 ']
${Workbench_Link} =         xpath://a[@label='Workbench']
${Txt_07} =                 User navigates to the workbench section
${Dest_Name} =              Snowflake01
${Search_Icon_Elem} =       xpath://searcharea[@placeholder='Search Schema']
${Txt_08} =                 User search for the destination table
${Search_Bar_Elem} =        xpath://input[@type='text']
${Tbl_Name} =               Pooja_contact
${Db_Query} =               SELECT * FROM "DB12"."PUBLIC"."POOJA_CONTACT";
${Workbench_Elem} =         xpath://div[@class='CodeMirror-lines']
${Txt_09} =                 User enters the select query and executes the query.
${Run_Query_Btn} =          xpath://button[@class='btn btn-secondary btn-thumbnail-left']
${Qry_Result_Txt} =         Query Results
${Tbl_Row} =                xpath://table/tbody/tr
${Exp_Name} =               Sri Tripathy
${Timestamp} =              xpath://table/tbody/tr[3]/td[42]