***Settings***
Library          SeleniumLibrary
Resource         ../Utilities/locators.robot
Resource         ../keywords/pipeline.robot
Resource         ../keywords/destination.robot

Test Setup       Open the Browser
Test Teardown    Close the Browser 

*** Test Cases ***
User is creating a pipeline between Salesforce and Snowflake  
    [Tags]  salesforce
    Given User is alowed to login to Hevo
    When User is selecting Salesforce as source
    And User is selecting a Salesforce account
    And User selects the objects to replicate
    And User selects snowflake as destination

User is naviagting to destination and verifying the load
    [Tags]  sanity
    Given User is alowed to login to Hevo
    Given User is navigating to destination
    When User navigates to workbench section of a destination
    And User fetches the table data
    Then User verifies the ingested time for a specific data
