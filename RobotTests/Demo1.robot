*** Settings ***
Documentation    To validate Ashoka LeyLand WebSite
Library     SeleniumLibrary
Test Teardown   Close browser

*** Test Case ***
Validate LeyLand Tipper Page
    Launch LeyLand
    Select Trucks
    Select Tipper
    Landed on Tipper Page

Navigate Till InterCity Bus
    Launch LeyLand
    Select Buses
    Click DropDown
    Select InterCity


*** Keywords ***
Launch LeyLand
    Create Webdriver    Chrome  executable_path=E:\chromedriver
    Go To   https://www.ashokleyland.com/in/en
    Maximize Browser Window
    Set Browser Implicit Wait   30
Select Trucks
    Click Element   xpath://h5[.='Trucks']
Select Buses
    Click Element   xpath://h5[.='Buses']
Select InterCity
    Click Element   xpath://h3[.='Select the Bus']/following-sibling::div/ul/li/h5[.='Intercity']
Select Tipper
    Click Element   xpath://div[@class='text-center']/h4[.='Tippers']/following-sibling::h4[.='1920 — 4×2']
Landed on Tipper Page
    Element Should Be Visible   xpath://h6[contains(text(),'tipper 1920')]
Click DropDown
    Click Element   xpath://h3[.='Select the Bus']/following-sibling::div






