*** Settings ***
Library     SeleniumLibrary
Library     String
Library     ImapLibrary2



*** Variables ***
${IMAP_HOST} =  imap.gmail.com
${IMAP_USER} =      #Here Email of your gmail
${IMAP_PASSWORD} =         #Password of your gmail account


*** Keywords ***
EmailVerificationCode
    Open Mailbox    host=imap.gmail.com   user=${IMAP_USER}   password=${IMAP_PASSWORD}
    ${LATEST} =    Wait For Email    sender=no-reply@mayadata.io   timeout=30
    ${HTML} =      get email body   ${LATEST}
    Should Contain    ${HTML}    border-radius: 4px;">
    ${HTML}     fetch from right       ${HTML}   border-radius: 4px;">
    ${ver_code}     Fetch from left    ${HTML}   <div style="margin-top:8px; text-align:center;">
    set suite variable                 ${ver_code}
    ${ver_code}     Fetch from left    ${ver_code}   </span>
    log to console                  INFO: Verification code is: ${ver_code}
