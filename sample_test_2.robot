*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.google.com
${BROWSER}    headlesschrome

*** Test Cases ***
Verify Website Title
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Google
    Close Browser

Verify Search Input Presence
    Open Browser    ${URL}    ${BROWSER}
    Page Should Contain Element    name:q
    Close Browser

Verify I'm Feeling Lucky Button
    Open Browser    ${URL}    ${BROWSER}
    Page Should Contain Element    xpath=//input[@value="I'm Feeling Lucky"]
    Close Browser

Verify Google Logo Is Visible
    Open Browser    ${URL}    ${BROWSER}
    Page Should Contain Element    id=hplogo
    Close Browser
