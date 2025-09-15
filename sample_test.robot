*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com
${BROWSER}    headlesschrome

*** Test Cases ***
Verify Website Title and Element
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Google
    Page Should Contain Element    name:q
    Close Browser
