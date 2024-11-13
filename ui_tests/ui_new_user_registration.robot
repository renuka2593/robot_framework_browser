*** Settings ***
Documentation           This is about Register Functionality
Resource                ../ui_resources/registration_flow.robot


*** Variables ***
${BASE_URL}             https://juice-shop.herokuapp.com


*** Test Cases ***
Register a new User
    [Documentation]               This is about happy path flow for registering new user
    [Tags]                        smoke
    Launch Juice Shop application    ${BASE_URL}
    NAVIGATE TO REGISTRATION PAGE
    Enter New User Details
