*** Settings ***
Resource                custom_keywords.robot
*** Variables ***
${CLOSE_BANNER}         button[aria-label="Close Welcome Banner"]
${COOKIE_BUTTON}        text=Me want it!
${ACCOUNT}              id=navbarAccount
${LOGIN}                id=navbarLoginButton
${NEW_USER}             css=#newCustomerLink a.primary-link
${EMAIL}                id=emailControl
${PASSWORD}             id=passwordControl
${REPEAT_PASSWORD}      id=repeatPasswordControl
${SECURITY}             role=combobox
${ANSWER}               id=securityAnswerControl
${REGISTER_BUTTON}      id=registerButton

*** Keywords ***
Navigate to registration page
    Click and Wait                           ${ACCOUNT}
    Click and Wait                           ${LOGIN}
    Click and Wait                           ${NEW_USER}
Launch Juice Shop application
    [Arguments]                 ${BASE_URL}
    Open Browser and Navigate                chromium               ${BASE_URL}     false
    Click and Wait                           ${close_banner}
    Click and Wait                           ${COOKIE_BUTTON}
Enter New User Details
    fill text                                ${EMAIL}            abdrvivc@gmail.com
    fill text                                ${PASSWORD}         yellow
    fill text                                ${REPEAT_PASSWORD}  yellow
    click with options                       ${SECURITY}         delay=100ms
    ${OPTION}=                               get element         span.mat-option-text:has-text('maiden')
    Click and Wait                           ${OPTION}
    fill text                                ${ANSWER}           Anita
    Click and Wait                           ${REGISTER_BUTTON}



