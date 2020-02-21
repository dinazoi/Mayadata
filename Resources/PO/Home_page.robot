*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
I want to go on home page
    go to                               ${START_URL}
    wait until page contains            Sign in to MayaData
    log to console                      INFO: Welcome on HP of the Maydata.io

I want to proceed to Customer sign up form
    click element                       xpath=.//*[text()='Sign Up']
    wait until page contains            Do more with your Kubernetes at one place.
    log to console                      INFO: Sign up form reached


I want to enter verification code
    input text                          xpath=.//*[@id='ember30']               ${ver_code}
    click element                       xpath=.//*[text()='Verify']
    log to console                      INFO: Verification code successfully added

I want to log out
    wait until keyword succeeds         30 sec   3 sec       set focus to element                xpath=.//*[@id='dropdownMenuLink']/p[text()='Jhon Miller']
    click element                       xpath=.//*[@id='dropdownMenuLink']/p[text()='Jhon Miller']
    click element                       css=a[href='/logout']
    wait until page contains            Sign in to MayaData
    log to console                      INFO: User successfully logout


