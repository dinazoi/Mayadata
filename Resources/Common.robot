*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${WIDTH}                1440
${HEIGHT}               900
${browser_version}


*** Keywords ***
Begin web test on local display
    open browser                        about:blank  ${BROWSER}
    set window size                     ${WIDTH}  ${HEIGHT}
    set selenium speed	                0.3 seconds
    set selenium timeout                20 seconds
    set selenium implicit wait          3s

End web test
    close all browsers