*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.google.com
${BROWSER}    headlesschrome

*** Test Cases ***
Test Addition Of Two Numbers
    ${a}=    Set Variable    5
    ${b}=    Set Variable    7
    ${result}=    Evaluate    ${a} + ${b}
    Should Be Equal As Strings    ${result}    12

Test Addition With Negative Number
    ${a}=    Set Variable    -3
    ${b}=    Set Variable    10
    ${result}=    Evaluate    ${a} + ${b}
    Should Be Equal As Strings    ${result}    7

Test Addition Of Floats
    ${a}=    Set Variable    2.5
    ${b}=    Set Variable    3.5
    ${result}=    Evaluate    ${a} + ${b}
    Should Be Equal As Strings    ${result}    6.0
uld Be Equal    ${result}    6.0
