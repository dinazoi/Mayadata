*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/PO/Home_page.robot
Resource  ../Resources/PO/Customer.robot
Resource  ../Resources/PO/Emails.robot

*** Keywords ***
I am Guest user i want to enter to the home page
    common.Begin web test on local display
    Home_page.I want to go on home page

I am Guest user that proceeds to Customer sign up form
    Home_page.I want to proceed to Customer sign up form

As Guest user i reached sign up form
    Customer.I want to fill the first form of the sign up

I get "VerificationCode" email
    Emails.EmailVerificationCode

As Guest i want to proceeds with sign up
    Home_page.I want to enter verification code

As Guest i want to add aditional information
    Customer.I want to enter other information about company

As registred user i want to logout
    Home_page.I want to log out





