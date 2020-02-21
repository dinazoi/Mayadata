*** Settings ***
Resource    ../Resources/Sign_up.robot
Resource    ../Resources/Home_account.robot
Resource    ../Resources/Common.robot
Library     SeleniumLibrary

*** Variables ***
${BROWSER}      CHROME
${START_URL}    https://account.mayadata.io/
#robot -d Results -i Smoke -L Trace Tests/Smoke_general.robot

*** Test Cases ***
Customer sign up
    [Documentation]  As a Guest user, I should able to sign up as a Customer through home page
    ...             -Home page
    ...             --Sign up steps
    [Tags]  Sign up  Smoke
   GIVEN I am Guest user i want to enter to the home page
   AND I am Guest user that proceeds to Customer sign up form
   AND As Guest user i reached sign up form
   AND I get "VerificationCode" email
   AND As Guest i want to proceeds with sign up
   AND As Guest i want to add aditional information
   THEN As registred user i want to logout
   THEN End web test

As a registred user i want to login and change password
    [Documentation]  As a Guest user, I should able to sign up as a Customer through home page
    ...             -Home page
    ...             --Login
    ...             --- Change password
    ...             ---- Login with new password
    [Tags]  Login  Smoke
    GIVEN I am Guest user i want to enter to the home page
    AND As a registred user i want to login
    AND As a registred user i want to change password
    AND As registred user i want to logout
    AND As registred user i want to login with new password
    THEN End web test




