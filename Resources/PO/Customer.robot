*** Settings ***
Library  SeleniumLibrary
Library  DateTime

*** Variables ***
${First_name}       Jhon
${Last_name}        Miller
${Password}         Passpro123$
${New_password}     Passpro124$
${Phone_number}     +380631141307
${Comapny}          RobotCompany
${Role}             QAEngineer

*** Keywords ***
I want to fill the first form of the sign up
    input text                      xpath=.//*[@id='ember17']       ${First_name}
    log to console                  INFO: First name added
    input text                      xpath=.//*[@id='ember18']       ${Last_name}
    log to console                  INFO: Second name added
    ${date}                         get current date  result_format=%Y%m%d%H%M%S
    set suite variable              ${User_email}     #+${date}@gmail.com  #Here your Email
    input text                      xpath=.//*[@id='ember19']      ${User_email}
    log to console                  INFO: Customer Email added: ${User_email}
    input text                      xpath=.//*[@id='passify-field']     ${Password}
    log to console                  INFO: Customer password added
    click element                   xpath=.//*[text()='Sign Up for Free']
    wait until page contains        Verify your Email
    log to console                  INFO: First form are complited


I want to enter other information about company
    input text                      xpath=.//*[@id='ember37']        ${Phone_number}
    log to console                  INFO: Phone number added
    input text                      xpath=.//*[@id='ember38']        ${Comapny}
    log to console                  INFO: Company name added
    input text                      xpath=.//*[@id='ember39']        ${Role}
    log to console                  INFO: Role added
    click element                   xpath=.//*[text()='Submit']


I want to login
    input text                      xpath=.//*[@id='ember6']          ${User_email}
    log to console                  INFO: Login added
    input text                      xpath=.//*[@id='ember7']          ${Password}
    log to console                  INFO: Password added
    click element                   xpath=.//*[text()='Sign In']

I want to login with new password
    input text                      xpath=.//*[@id='ember6']          ${User_email}
    log to console                  INFO: Login added
    input text                      xpath=.//*[@id='ember7']          ${New_password}
    log to console                  INFO: Password added
    click element                   xpath=.//*[text()='Sign In']
    wait until page contains        Hello Jhon Miller!
    log to console                  INFO: Logged with the new password

I want to change password
    wait until keyword succeeds     30 sec   3 sec       set focus to element                xpath=.//*[@id='dropdownMenuLink']/p[text()='Jhon Miller']
    click element                   xpath=.//*[@id='dropdownMenuLink']/p[text()='Jhon Miller']
    click element                   xpath=.//*[@id='ember6']
    wait until page contains        Jhon Miller
    log to console                  INFO: Profile page reached
    click element                   css=a[href='/change-password']
    wait until page contains        Change Password
    log to console                  INFO: Change password form reached
    input text                      xpath=.//*[@placeholder='current password']          ${password}
    log to console                  INFO: Old password added
    input text                      xpath=.//*[@placeholder='new password']              ${New_password}
    input text                      xpath=.//*[@placeholder='confirm password']          ${New_password}
    log to console                  INFO: New password added
    click element                   xpath=.//*[@value='Update password']
    wait until page contains        Profile
    log to console                  INFO: Password successfully changed




