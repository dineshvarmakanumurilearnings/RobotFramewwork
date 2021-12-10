*** Settings ***
Documentation   This all about Myntra
Library  SeleniumLibrary
Test Teardown   Close Browser

*** Test Case ***
Launch Myntra and play around
    open Myntra website
    Check for Header and MYNTRA LUXE
    Hover on Men and Check
    Hover on all items on nav
*** Keywords ***
open Myntra website
   Create Webdriver    Chrome  executable_path=E:\chromedriver
   Go To    https://www.myntra.com/
   Maximize Browser Window
   Set Browser Implicit Wait    25
Check for Header and MYNTRA LUXE
    Element Should Be Visible   desktop-header-cnt
    Element Should Be Visible   xpath://div[@class='text-banner-container']/h4[.='Myntra Luxe']
Hover on Men and Check
    Mouse Over  css:.desktop-navLink>a[href$='/men']
Hover on all items on nav
    @{navElements}=     Get WebElements     css:div.desktop-navLink>a
    FOR     ${element}  IN  @{navElements}
        Mouse Over  ${element}
    END






