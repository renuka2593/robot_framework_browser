*** Settings ***
Library         Browser
*** Keywords ***
Open Browser and Navigate
    [Arguments]    ${BROWSER}       ${BASE_URL}     ${HEADLESS}
     new browser            ${BROWSER}    headless=${HEADLESS}
     new context
     new page                ${BASE_URL}

Click and Wait
       [Arguments]              ${LOCATOR}
       scroll to element        ${LOCATOR}
       click                   ${LOCATOR}
       wait for load state

Close Browser
    close browser